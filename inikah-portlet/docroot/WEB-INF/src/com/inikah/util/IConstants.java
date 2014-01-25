package com.inikah.util;

import com.liferay.portal.kernel.util.GetterUtil;

public interface IConstants {
	int PROFILE_STATUS_CREATED = 0;
	int PROFILE_STATUS_STEP1_DONE = 1;
	int PROFILE_STATUS_STEP2_DONE = 2;
	int PROFILE_STATUS_STEP3_DONE = 3;
	int PROFILE_STATUS_STEP4_DONE = 4;
	int PROFILE_STATUS_STEP5_DONE = 5;
	int PROFILE_STATUS_PLAN_PICKED = 6;
	int PROFILE_STATUS_MODE_PICKED = 7;
	int PROFILE_STATUS_PAYMENT_DONE = 8;
	int PROFILE_STATUS_SENT_BACK = 9;
	int PROFILE_STATUS_ACTIVE = 10;
	int PROFILE_STATUS_INACTIVE = 11;
	int PROFILE_STATUS_MATCH_FOUND = 12;
	int PROFILE_STATUS_DELETED = 15;
	
	String LIST_MARITAL_STATUS = "maritalStatus"; 
	String LIST_CREATED_FOR = "createdFor";
	String LIST_COMPLEXION = "complexion";
	String LIST_REMARRIAGE_REASON = "remarriageReason";
	String LIST_EDUCATION = "education";
	String LIST_RELIGIOUS_EDUCATION = "religiousEducation";
	String LIST_PROFESSION ="profession";
	String LIST_INCOME_FREQUENCY = "incomeFrequency";

	int INT_ACTION_VIEWED = 1;
	int INT_ACTION_BOOKMARKED = 2;
	int INT_ACTION_PROSPOSED = 3;
	int INT_ACTION_VIEWED_PROPOSAL = 4;
	int INT_ACTION_ACCEPTED = 4;
	int INT_ACTION_DECLINED = 5;
	int INT_ACTION_BLOCKED = 6;
	int INT_ACTION_CAPTURED_IN_REPORT = 7;
	int INT_ACTION_VEIWED_CONTACT_INFO = 8;
	
	int LOC_TYPE_REGION = 1;
	int LOC_TYPE_CITY = 2;
	int LOC_TYPE_AREA = 3;
	int LOC_TYPE_MASJID = 4;
	
	int IMG_TYPE_PHOTO = 1;
	int IMG_TYPE_FACE = 2;
	int IMG_TYPE_DOC = 3;
	
	String PAY_MODE_CHEQUE_DD = "chequeDD";
	
	int PHONE_UNVERIFIED = 777;
	int PHONE_VERIFIED = 999;
	
	int RELATION_FATHER = 1;
	int RELATION_GRAND_FATHER = 2;
	int RELATION_MOTHER = 3;
	int RELATION_BROTHER = 4;
	int RELATION_SISTER = 5;
	int RELATION_BRO_IN_LAW = 6;
	int RELATION_UNCLE = 7;
	int RELATION_FRIEND = 8;
	int RELATION_REFERENCE = 9;
	
	// -------------------------------------------------------
	// Configuration Constants
	// -------------------------------------------------------
	
	// maxmind
	String MAX_MIND_USER_ID = "max.mind.user.id";
	String MAX_MIND_LICENSE_KEY = "max.mind.license.key";
	
	// paypal
	String PAYPAL_ENVIRONMENT = "paypal.environment";
	String PAYPAL_ENVIRONMENT_LIVE = "live";
	String PAYPAL_ENVIRONMENT_SANDBOX = "sandbox";
	
	String PAYPAL_MERCHANT_USERNAME = "paypal.acct1.UserName";
	String PAYPAL_MERCHANT_PASSWORD = "paypal.acct1.Password";
	String PAYPAL_MERCHANT_SIGNATURE = "paypal.acct1.Signature";
	
	// clickatell (for SMS)
	String CLICKATELL_USERNAME = "clickatell.username";
	String CLICKATELL_PASSWORD = "clickatell.password";
	String CLICKATELL_API_ID = "clickatell.api.id";
	
	// openxchangerates.org
	boolean OPENXCHAGE_UPDATE = GetterUtil.getBoolean(AppConfig.get("openxchange.update"));
	boolean NOTIFY_OLD_USERS = GetterUtil.getBoolean(AppConfig.get("notify.old.users"));
	String OPENXCHAGE_API_ID = "openxchange.api.id";
	
	// Cloudinary (for thumbnail conversion)
	String CLDY_CLOUD_NAME = "cloudinary.cloud.name";
	String CLDY_API_KEY = "cloudinary.api.key";
	String CLDY_API_SECRET = "cloudinary.api.secret";	
}