package pet.model;

public class UserAddress {
    private Integer id;

    private Integer uId;

    private String adrArea;

    private String adrFullAddress;

    private String postCode;

    private String receiptName;

    private String telphone;
    public UserAddress(){};
    public UserAddress(Integer uId, String adrArea, String adrFullAddress, String postCode, String receiptName, String telphone) {
        this.uId = uId;
        this.adrArea = adrArea;
        this.adrFullAddress = adrFullAddress;
        this.postCode = postCode;
        this.receiptName = receiptName;
        this.telphone = telphone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getAdrArea() {
        return adrArea;
    }

    public void setAdrArea(String adrArea) {
        this.adrArea = adrArea == null ? null : adrArea.trim();
    }

    public String getAdrFullAddress() {
        return adrFullAddress;
    }

    public void setAdrFullAddress(String adrFullAddress) {
        this.adrFullAddress = adrFullAddress == null ? null : adrFullAddress.trim();
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode == null ? null : postCode.trim();
    }

    public String getReceiptName() {
        return receiptName;
    }

    public void setReceiptName(String receiptName) {
        this.receiptName = receiptName == null ? null : receiptName.trim();
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone == null ? null : telphone.trim();
    }
}