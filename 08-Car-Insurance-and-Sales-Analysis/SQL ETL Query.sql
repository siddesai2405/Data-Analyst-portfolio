select car.[Car_ID]
		,[Brand]
		,[Model]
		,[Year]
		,[Fuel_Type]
		,[Transmission]
		,[Color]
		,[Owner_Type]
		,[Mileage_kmpl]
		,[Price_Lakh]
		,[Provider]
		,[Policy_Number]
		,[Expiry_Date]
		,[Status]
		,[Owner_Name]
		,[Contact]
		,[City]
		,[Purchase_Year]
		,[Sale_Price_Lakh]
		,[Sale_Date]
		,[Buyer_Name]
		,[Service_Type]
		,[Service_Date]
		,[Service_Cost]
		,[Service_Center]  INTO MASTER_CAR_DATA

from Car 
LEFT JOIN INSURANCE ON CAR.Car_ID = INSURANCE.Car_ID 
LEFT JOIN OWNERS ON CAR.Car_ID = OWNERS.Car_ID 
LEFT JOIN SALES ON CAR.Car_ID = SALES.Car_ID
LEFT JOIN SERVICE_HISTORY ON CAR.Car_ID = SERVICE_HISTORY.Car_ID