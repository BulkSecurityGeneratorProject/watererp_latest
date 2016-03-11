package com.callippus.water.erp.web.rest;

import com.callippus.water.erp.Application;
import com.callippus.water.erp.domain.TariffCategoryMaster;
import com.callippus.water.erp.repository.TariffCategoryMasterRepository;

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
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


/**
 * Test class for the TariffCategoryMasterResource REST controller.
 *
 * @see TariffCategoryMasterResource
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebAppConfiguration
@IntegrationTest
public class TariffCategoryMasterResourceIntTest {

    private static final String DEFAULT_TARIFF_NAME = "AAAAA";
    private static final String UPDATED_TARIFF_NAME = "BBBBB";

    private static final Integer DEFAULT_TARIFF_UNIT = 1;
    private static final Integer UPDATED_TARIFF_UNIT = 2;

    private static final Float DEFAULT_TARIFF_VALUE = 1F;
    private static final Float UPDATED_TARIFF_VALUE = 2F;

    @Inject
    private TariffCategoryMasterRepository tariffCategoryMasterRepository;

    @Inject
    private MappingJackson2HttpMessageConverter jacksonMessageConverter;

    @Inject
    private PageableHandlerMethodArgumentResolver pageableArgumentResolver;

    private MockMvc restTariffCategoryMasterMockMvc;

    private TariffCategoryMaster tariffCategoryMaster;

    @PostConstruct
    public void setup() {
        MockitoAnnotations.initMocks(this);
        TariffCategoryMasterResource tariffCategoryMasterResource = new TariffCategoryMasterResource();
        ReflectionTestUtils.setField(tariffCategoryMasterResource, "tariffCategoryMasterRepository", tariffCategoryMasterRepository);
        this.restTariffCategoryMasterMockMvc = MockMvcBuilders.standaloneSetup(tariffCategoryMasterResource)
            .setCustomArgumentResolvers(pageableArgumentResolver)
            .setMessageConverters(jacksonMessageConverter).build();
    }

    @Before
    public void initTest() {
        tariffCategoryMaster = new TariffCategoryMaster();
        tariffCategoryMaster.setTariffName(DEFAULT_TARIFF_NAME);
        tariffCategoryMaster.setTariffUnit(DEFAULT_TARIFF_UNIT);
        tariffCategoryMaster.setTariffValue(DEFAULT_TARIFF_VALUE);
    }

    @Test
    @Transactional
    public void createTariffCategoryMaster() throws Exception {
        int databaseSizeBeforeCreate = tariffCategoryMasterRepository.findAll().size();

        // Create the TariffCategoryMaster

        restTariffCategoryMasterMockMvc.perform(post("/api/tariffCategoryMasters")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(tariffCategoryMaster)))
                .andExpect(status().isCreated());

        // Validate the TariffCategoryMaster in the database
        List<TariffCategoryMaster> tariffCategoryMasters = tariffCategoryMasterRepository.findAll();
        assertThat(tariffCategoryMasters).hasSize(databaseSizeBeforeCreate + 1);
        TariffCategoryMaster testTariffCategoryMaster = tariffCategoryMasters.get(tariffCategoryMasters.size() - 1);
        assertThat(testTariffCategoryMaster.getTariffName()).isEqualTo(DEFAULT_TARIFF_NAME);
        assertThat(testTariffCategoryMaster.getTariffUnit()).isEqualTo(DEFAULT_TARIFF_UNIT);
        assertThat(testTariffCategoryMaster.getTariffValue()).isEqualTo(DEFAULT_TARIFF_VALUE);
    }

    @Test
    @Transactional
    public void checkTariffNameIsRequired() throws Exception {
        int databaseSizeBeforeTest = tariffCategoryMasterRepository.findAll().size();
        // set the field null
        tariffCategoryMaster.setTariffName(null);

        // Create the TariffCategoryMaster, which fails.

        restTariffCategoryMasterMockMvc.perform(post("/api/tariffCategoryMasters")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(tariffCategoryMaster)))
                .andExpect(status().isBadRequest());

        List<TariffCategoryMaster> tariffCategoryMasters = tariffCategoryMasterRepository.findAll();
        assertThat(tariffCategoryMasters).hasSize(databaseSizeBeforeTest);
    }

    @Test
    @Transactional
    public void checkTariffUnitIsRequired() throws Exception {
        int databaseSizeBeforeTest = tariffCategoryMasterRepository.findAll().size();
        // set the field null
        tariffCategoryMaster.setTariffUnit(null);

        // Create the TariffCategoryMaster, which fails.

        restTariffCategoryMasterMockMvc.perform(post("/api/tariffCategoryMasters")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(tariffCategoryMaster)))
                .andExpect(status().isBadRequest());

        List<TariffCategoryMaster> tariffCategoryMasters = tariffCategoryMasterRepository.findAll();
        assertThat(tariffCategoryMasters).hasSize(databaseSizeBeforeTest);
    }

    @Test
    @Transactional
    public void checkTariffValueIsRequired() throws Exception {
        int databaseSizeBeforeTest = tariffCategoryMasterRepository.findAll().size();
        // set the field null
        tariffCategoryMaster.setTariffValue(null);

        // Create the TariffCategoryMaster, which fails.

        restTariffCategoryMasterMockMvc.perform(post("/api/tariffCategoryMasters")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(tariffCategoryMaster)))
                .andExpect(status().isBadRequest());

        List<TariffCategoryMaster> tariffCategoryMasters = tariffCategoryMasterRepository.findAll();
        assertThat(tariffCategoryMasters).hasSize(databaseSizeBeforeTest);
    }

    @Test
    @Transactional
    public void getAllTariffCategoryMasters() throws Exception {
        // Initialize the database
        tariffCategoryMasterRepository.saveAndFlush(tariffCategoryMaster);

        // Get all the tariffCategoryMasters
        restTariffCategoryMasterMockMvc.perform(get("/api/tariffCategoryMasters?sort=id,desc"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.[*].id").value(hasItem(tariffCategoryMaster.getId().intValue())))
                .andExpect(jsonPath("$.[*].tariffName").value(hasItem(DEFAULT_TARIFF_NAME.toString())))
                .andExpect(jsonPath("$.[*].tariffUnit").value(hasItem(DEFAULT_TARIFF_UNIT)))
                .andExpect(jsonPath("$.[*].tariffValue").value(hasItem(DEFAULT_TARIFF_VALUE.doubleValue())));
    }

    @Test
    @Transactional
    public void getTariffCategoryMaster() throws Exception {
        // Initialize the database
        tariffCategoryMasterRepository.saveAndFlush(tariffCategoryMaster);

        // Get the tariffCategoryMaster
        restTariffCategoryMasterMockMvc.perform(get("/api/tariffCategoryMasters/{id}", tariffCategoryMaster.getId()))
            .andExpect(status().isOk())
            .andExpect(content().contentType(MediaType.APPLICATION_JSON))
            .andExpect(jsonPath("$.id").value(tariffCategoryMaster.getId().intValue()))
            .andExpect(jsonPath("$.tariffName").value(DEFAULT_TARIFF_NAME.toString()))
            .andExpect(jsonPath("$.tariffUnit").value(DEFAULT_TARIFF_UNIT))
            .andExpect(jsonPath("$.tariffValue").value(DEFAULT_TARIFF_VALUE.doubleValue()));
    }

    @Test
    @Transactional
    public void getNonExistingTariffCategoryMaster() throws Exception {
        // Get the tariffCategoryMaster
        restTariffCategoryMasterMockMvc.perform(get("/api/tariffCategoryMasters/{id}", Long.MAX_VALUE))
                .andExpect(status().isNotFound());
    }

    @Test
    @Transactional
    public void updateTariffCategoryMaster() throws Exception {
        // Initialize the database
        tariffCategoryMasterRepository.saveAndFlush(tariffCategoryMaster);

		int databaseSizeBeforeUpdate = tariffCategoryMasterRepository.findAll().size();

        // Update the tariffCategoryMaster
        tariffCategoryMaster.setTariffName(UPDATED_TARIFF_NAME);
        tariffCategoryMaster.setTariffUnit(UPDATED_TARIFF_UNIT);
        tariffCategoryMaster.setTariffValue(UPDATED_TARIFF_VALUE);

        restTariffCategoryMasterMockMvc.perform(put("/api/tariffCategoryMasters")
                .contentType(TestUtil.APPLICATION_JSON_UTF8)
                .content(TestUtil.convertObjectToJsonBytes(tariffCategoryMaster)))
                .andExpect(status().isOk());

        // Validate the TariffCategoryMaster in the database
        List<TariffCategoryMaster> tariffCategoryMasters = tariffCategoryMasterRepository.findAll();
        assertThat(tariffCategoryMasters).hasSize(databaseSizeBeforeUpdate);
        TariffCategoryMaster testTariffCategoryMaster = tariffCategoryMasters.get(tariffCategoryMasters.size() - 1);
        assertThat(testTariffCategoryMaster.getTariffName()).isEqualTo(UPDATED_TARIFF_NAME);
        assertThat(testTariffCategoryMaster.getTariffUnit()).isEqualTo(UPDATED_TARIFF_UNIT);
        assertThat(testTariffCategoryMaster.getTariffValue()).isEqualTo(UPDATED_TARIFF_VALUE);
    }

    @Test
    @Transactional
    public void deleteTariffCategoryMaster() throws Exception {
        // Initialize the database
        tariffCategoryMasterRepository.saveAndFlush(tariffCategoryMaster);

		int databaseSizeBeforeDelete = tariffCategoryMasterRepository.findAll().size();

        // Get the tariffCategoryMaster
        restTariffCategoryMasterMockMvc.perform(delete("/api/tariffCategoryMasters/{id}", tariffCategoryMaster.getId())
                .accept(TestUtil.APPLICATION_JSON_UTF8))
                .andExpect(status().isOk());

        // Validate the database is empty
        List<TariffCategoryMaster> tariffCategoryMasters = tariffCategoryMasterRepository.findAll();
        assertThat(tariffCategoryMasters).hasSize(databaseSizeBeforeDelete - 1);
    }
}