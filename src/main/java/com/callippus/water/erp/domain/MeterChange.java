package com.callippus.water.erp.domain;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import java.time.LocalDate;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import java.util.Objects;

import com.callippus.water.erp.domain.enumeration.MeterChangeStatus;

/**
 * A MeterChange.
 */
@Entity
@Table(name = "meter_change")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class MeterChange implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "can")
    private String can;
    
    @Column(name = "reason_for_change")
    private String reasonForChange;
    
    @Column(name = "prev_meter_reading", precision=20, scale=3)
    private BigDecimal prevMeterReading;
    
    @Column(name = "new_meter_reading", precision=20, scale=3)
    private BigDecimal newMeterReading;
    
    @Column(name = "remarks")
    private String remarks;
    
    @Column(name = "approved_date")
    private LocalDate approvedDate;
    
    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private MeterChangeStatus status;
    
    @ManyToOne
    @JoinColumn(name = "cust_details_id")
    private CustDetails custDetails;

    @ManyToOne
    @JoinColumn(name = "prev_meter_no_id")
    private MeterDetails prevMeterNo;

    @ManyToOne
    @JoinColumn(name = "new_meter_no_id")
    private MeterDetails newMeterNo;

    @ManyToOne
    @JoinColumn(name = "bill_full_details_id")
    private BillFullDetails billFullDetails;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCan() {
        return can;
    }
    
    public void setCan(String can) {
        this.can = can;
    }

    public String getReasonForChange() {
        return reasonForChange;
    }
    
    public void setReasonForChange(String reasonForChange) {
        this.reasonForChange = reasonForChange;
    }

    public BigDecimal getPrevMeterReading() {
        return prevMeterReading;
    }
    
    public void setPrevMeterReading(BigDecimal prevMeterReading) {
        this.prevMeterReading = prevMeterReading;
    }

    public BigDecimal getNewMeterReading() {
        return newMeterReading;
    }
    
    public void setNewMeterReading(BigDecimal newMeterReading) {
        this.newMeterReading = newMeterReading;
    }

    public String getRemarks() {
        return remarks;
    }
    
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public LocalDate getApprovedDate() {
        return approvedDate;
    }
    
    public void setApprovedDate(LocalDate approvedDate) {
        this.approvedDate = approvedDate;
    }

    public MeterChangeStatus getStatus() {
        return status;
    }
    
    public void setStatus(MeterChangeStatus status) {
        this.status = status;
    }

    public CustDetails getCustDetails() {
        return custDetails;
    }

    public void setCustDetails(CustDetails custDetails) {
        this.custDetails = custDetails;
    }

    public MeterDetails getPrevMeterNo() {
        return prevMeterNo;
    }

    public void setPrevMeterNo(MeterDetails meterDetails) {
        this.prevMeterNo = meterDetails;
    }

    public MeterDetails getNewMeterNo() {
        return newMeterNo;
    }

    public void setNewMeterNo(MeterDetails meterDetails) {
        this.newMeterNo = meterDetails;
    }

    public BillFullDetails getBillFullDetails() {
        return billFullDetails;
    }

    public void setBillFullDetails(BillFullDetails billFullDetails) {
        this.billFullDetails = billFullDetails;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        MeterChange meterChange = (MeterChange) o;
        if(meterChange.id == null || id == null) {
            return false;
        }
        return Objects.equals(id, meterChange.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return "MeterChange{" +
            "id=" + id +
            ", can='" + can + "'" +
            ", reasonForChange='" + reasonForChange + "'" +
            ", prevMeterReading='" + prevMeterReading + "'" +
            ", newMeterReading='" + newMeterReading + "'" +
            ", remarks='" + remarks + "'" +
            ", approvedDate='" + approvedDate + "'" +
            ", status='" + status + "'" +
            '}';
    }
}
