package com.callippus.water.erp.web.rest;

import com.callippus.water.erp.Application;
import com.callippus.water.erp.domain.MeterChange;
import com.callippus.water.erp.repository.MeterChangeRepository;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.hamcrest.Matchers.hasItem;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.IntegrationTest;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.data.web.PageableHandlerMethodArgumentResolver;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.util.ReflectionTestUtils;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.time.LocalDate;
import java.time.ZoneId;
import java.math.BigDecimal;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.callippus.water.erp.domain.enumeration.MeterChangeStatus;

/**
 * Test class for the MeterChangeResource REST controller.
 *
 * @see MeterChangeResource
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
@IntegrationTest
public class MeterChangeResourceIntTest {

    private static final String DEFAULT_CAN = "AAAAA";
    private static final String UPDATED_CAN = "BBBBB";
    private static final String DEFAULT_REASON_FOR_CHANGE = "AAAAA";
    private static final String UPDATED_REASON_FOR_CHANGE = "BBBBB";

    private static final BigDecimal DEFAULT_PREV_METER_READING = new BigDecimal(1);
    private static final BigDecimal UPDATED_PREV_METER_READING = new BigDecimal(2);

    private static final BigDecimal DEFAULT_NEW_METER_READING = new BigDecimal(1);
    private static final BigDecimal UPDATED_NEW_METER_READING = new BigDecimal(2);
    private static final String DEFAULT_REMARKS = "AAAAA";
    private static final String UPDATED_REMARKS = "BBBBB";

    private static final LocalDate DEFAULT_APPROVED_DATE = LocalDate.ofEpochDay(0L);
    private static final LocalDate UPDATED_APPROVED_DATE = LocalDate.now(ZoneId.systemDefault());
    
    private static final MeterChangeStatus DEFAULT_STATUS = MeterChangeStatus.INITIATED;
    private static final MeterChangeStatus UPDATED_STATUS = MeterChangeStatus.PROCESSING;

    @Inject
    private MeterChangeRepository meterChangeRepository;

    @Inject
    private MappingJackson2HttpMessageConverter jacksonMessageConverter;

    @Inject
    private PageableHandlerMethodArgumentResolver pageableArgumentResolver;

    private MockMvc restMeterChangeMockMvc;

    private MeterChange meterChange;

    @PostConstruct
    public void setup() {
        MockitoAnnotations.initMocks(this);
        MeterChangeResource meterChangeResource = new MeterChangeResource();
        ReflectionTestUtils.setField(meterChangeResource, "meterChangeRepository", meterChangeRepository);
        this.restMeterChangeMockMvc = MockMvcBuilders.standaloneSetup(meterChangeResource)
            .setCustomArgumentResolvers(pageableArgumentResolver)
            .setMessageConverters(jacksonMessageConverter).build();
    }

    @Before
    public void initTest() {
        meterChange = new MeterChange();
        meterChange.setCan(DEFAULT_CAN);
        meterChange.setReasonForChange(DEFAULT_REASON_FOR_CHANGE);
        meterChange.setPrevMeterReading(DEFAULT_PREV_METER_READING);
        meterChange.setNewMeterReading(DEFAULT_NEW_METER_READING);
        meterChange.setRemarks(DEFAULT_REMARKS);
        meterChange.setApprovedDate(DEFAULT_APPROVED_DATE);
        meterChange.setStatus(DEFAULT_STATUS);
    }

    @Test
    @Transactional
    public void createMeterChange() throws Exception {
        int databaseSizeBeforeCreate = meterChangeRepository.findAll().size();

        // Create the MeterChange

        restMeterChangeMockMvc.perform(post("/api/meterChanges")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(meterChange)))
                .andExpect(status().isCreated());

        // Validate the MeterChange in the database
        List<MeterChange> meterChanges = meterChangeRepository.findAll();
        assertThat(meterChanges).hasSize(databaseSizeBeforeCreate + 1);
        MeterChange testMeterChange = meterChanges.get(meterChanges.size() - 1);
        assertThat(testMeterChange.getCan()).isEqualTo(DEFAULT_CAN);
        assertThat(testMeterChange.getReasonForChange()).isEqualTo(DEFAULT_REASON_FOR_CHANGE);
        assertThat(testMeterChange.getPrevMeterReading()).isEqualTo(DEFAULT_PREV_METER_READING);
        assertThat(testMeterChange.getNewMeterReading()).isEqualTo(DEFAULT_NEW_METER_READING);
        assertThat(testMeterChange.getRemarks()).isEqualTo(DEFAULT_REMARKS);
        assertThat(testMeterChange.getApprovedDate()).isEqualTo(DEFAULT_APPROVED_DATE);
        assertThat(testMeterChange.getStatus()).isEqualTo(DEFAULT_STATUS);
    }

    @Test
    @Transactional
    public void checkStatusIsRequired() throws Exception {
        int databaseSizeBeforeTest = meterChangeRepository.findAll().size();
        // set the field null
        meterChange.setStatus(null);

        // Create the MeterChange, which fails.

        restMeterChangeMockMvc.perform(post("/api/meterChanges")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(meterChange)))
                .andExpect(status().isBadRequest());

        List<MeterChange> meterChanges = meterChangeRepository.findAll();
        assertThat(meterChanges).hasSize(databaseSizeBeforeTest);
    }

    @Test
    @Transactional
    public void getAllMeterChanges() throws Exception {
        // Initialize the database
        meterChangeRepository.saveAndFlush(meterChange);

        // Get all the meterChanges
        restMeterChangeMockMvc.perform(get("/api/meterChanges?sort=id,desc"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.[*].id").value(hasItem(meterChange.getId().intValue())))
                .andExpect(jsonPath("$.[*].can").value(hasItem(DEFAULT_CAN.toString())))
                .andExpect(jsonPath("$.[*].reasonForChange").value(hasItem(DEFAULT_REASON_FOR_CHANGE.toString())))
                .andExpect(jsonPath("$.[*].prevMeterReading").value(hasItem(DEFAULT_PREV_METER_READING.intValue())))
                .andExpect(jsonPath("$.[*].newMeterReading").value(hasItem(DEFAULT_NEW_METER_READING.intValue())))
                .andExpect(jsonPath("$.[*].remarks").value(hasItem(DEFAULT_REMARKS.toString())))
                .andExpect(jsonPath("$.[*].approvedDate").value(hasItem(DEFAULT_APPROVED_DATE.toString())))
                .andExpect(jsonPath("$.[*].status").value(hasItem(DEFAULT_STATUS.toString())));
    }

    @Test
    @Transactional
    public void getMeterChange() throws Exception {
        // Initialize the database
        meterChangeRepository.saveAndFlush(meterChange);

        // Get the meterChange
        restMeterChangeMockMvc.perform(get("/api/meterChanges/{id}", meterChange.getId()))
            .andExpect(status().isOk())
            .andExpect(content().contentType(MediaType.APPLICATION_JSON))
            .andExpect(jsonPath("$.id").value(meterChange.getId().intValue()))
            .andExpect(jsonPath("$.can").value(DEFAULT_CAN.toString()))
            .andExpect(jsonPath("$.reasonForChange").value(DEFAULT_REASON_FOR_CHANGE.toString()))
            .andExpect(jsonPath("$.prevMeterReading").value(DEFAULT_PREV_METER_READING.intValue()))
            .andExpect(jsonPath("$.newMeterReading").value(DEFAULT_NEW_METER_READING.intValue()))
            .andExpect(jsonPath("$.remarks").value(DEFAULT_REMARKS.toString()))
            .andExpect(jsonPath("$.approvedDate").value(DEFAULT_APPROVED_DATE.toString()))
            .andExpect(jsonPath("$.status").value(DEFAULT_STATUS.toString()));
    }

    @Test
    @Transactional
    public void getNonExistingMeterChange() throws Exception {
        // Get the meterChange
        restMeterChangeMockMvc.perform(get("/api/meterChanges/{id}", Long.MAX_VALUE))
                .andExpect(status().isNotFound());
    }

    @Test
    @Transactional
    public void updateMeterChange() throws Exception {
        // Initialize the database
        meterChangeRepository.saveAndFlush(meterChange);

		int databaseSizeBeforeUpdate = meterChangeRepository.findAll().size();

        // Update the meterChange
        meterChange.setCan(UPDATED_CAN);
        meterChange.setReasonForChange(UPDATED_REASON_FOR_CHANGE);
        meterChange.setPrevMeterReading(UPDATED_PREV_METER_READING);
        meterChange.setNewMeterReading(UPDATED_NEW_METER_READING);
        meterChange.setRemarks(UPDATED_REMARKS);
        meterChange.setApprovedDate(UPDATED_APPROVED_DATE);
        meterChange.setStatus(UPDATED_STATUS);

        restMeterChangeMockMvc.perform(put("/api/meterChanges")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(meterChange)))
                .andExpect(status().isOk());

        // Validate the MeterChange in the database
        List<MeterChange> meterChanges = meterChangeRepository.findAll();
        assertThat(meterChanges).hasSize(databaseSizeBeforeUpdate);
        MeterChange testMeterChange = meterChanges.get(meterChanges.size() - 1);
        assertThat(testMeterChange.getCan()).isEqualTo(UPDATED_CAN);
        assertThat(testMeterChange.getReasonForChange()).isEqualTo(UPDATED_REASON_FOR_CHANGE);
        assertThat(testMeterChange.getPrevMeterReading()).isEqualTo(UPDATED_PREV_METER_READING);
        assertThat(testMeterChange.getNewMeterReading()).isEqualTo(UPDATED_NEW_METER_READING);
        assertThat(testMeterChange.getRemarks()).isEqualTo(UPDATED_REMARKS);
        assertThat(testMeterChange.getApprovedDate()).isEqualTo(UPDATED_APPROVED_DATE);
        assertThat(testMeterChange.getStatus()).isEqualTo(UPDATED_STATUS);
    }

    @Test
    @Transactional
    public void deleteMeterChange() throws Exception {
        // Initialize the database
        meterChangeRepository.saveAndFlush(meterChange);

		int databaseSizeBeforeDelete = meterChangeRepository.findAll().size();

        // Get the meterChange
        restMeterChangeMockMvc.perform(delete("/api/meterChanges/{id}", meterChange.getId())
                .accept(TestUtil.APPLICATION_JSON_UTF8))
                .andExpect(status().isOk());

        // Validate the database is empty
        List<MeterChange> meterChanges = meterChangeRepository.findAll();
        assertThat(meterChanges).hasSize(databaseSizeBeforeDelete - 1);
    }
}
