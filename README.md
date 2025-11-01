# Supply-Chain-Analysis
Executive narrative focused on operational efficiency and risk management using Power BI and SQL

📊 Key metrics analyzed include:

MAPE (Forecast Accuracy) – 84.4%

Availability % – 93.9%

Gross Profit % – 28.9%

Strike Rate – 92%

Lost Sales Value – R82M (due to stockouts)

Wastage Value – R150K

The Challenge & Solution (Highlighting Technical Skill)

The core challenge was integrating promotional flags with daily sales data:SQL & Data Modeling: 

Used a complex Common Table Expression (CTE) structure to join three tables (promos, products, and sales_daily) to accurately attribute a promo_flag to every sales transaction. This was critical for maintaining a clean, performant data model.

DAX: Developed calculated measures (like Total Promoted Sales) using the CALCULATE function to isolate and quantify the exact financial impact of promotions.

Business Impact (Focus on Results)
This dashboard provides executive-level actionable intelligence by:
Quantifying Risk: Clearly identifying the top categories driving Lost Revenue due to Stockouts. (Action: Revisit safety stock levels for Health & Beauty and Frozen).

Highlighting Waste Cost: Pinpointing where the highest value of Wastage occurs (e.g., Frozen and Health & Beauty), directing efforts for operational efficiency.

Measuring ROI: Providing the Strike Rate/Sell Through Efficiency KPI alongside the $R 11.26$M Promo Uplift to evaluate marketing spend.

