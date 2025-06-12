
# Project Notes – Sanius Health Insight Pack

These notes outline my process, thought steps, and some technical challenges I worked through while completing the insight pack.

---

## 🧪 Goal
To analyse real-world NHS cancer staging data and explore the role of AI in improving early diagnosis of blood cancers — particularly AML — as part of an interview task for Sanius Health.

---

## 🧰 Tools Used
- **R Studio** for data cleaning and visualisation
- **ggplot2** for charts
- **Canva** for slide layout and design
- **Public datasets** from NHS Digital
- **Peer-reviewed study** from Matek et al., Nature Machine Intelligence (2019)

---

## 🧼 Data Cleaning Steps
- Imported two CSV files (male and female datasets) on blood cancer staging
- Re-labeled cancer types for readability (e.g. AML, CML)
- Calculated late-stage diagnosis % from stage 3+4 counts
- Merged gendered datasets for comparison

---

## 📈 Visualisation
- Built grouped bar chart comparing late-stage diagnosis rates across 4 types of blood cancers by gender
- Created performance chart comparing CNN model vs human diagnosis in AML
- Tuned colours and labels to maximise clarity for non-technical stakeholders

---

## 🤖 Research Notes
- Chose AI in AML from Matek et al. because it's well-cited, robust, and clearly explained
- Extracted accuracy, sensitivity, and specificity from the paper
- Focused on explainability and relevance to Sanius Health's mission

---

## 🧠 Reflections & Challenges
- Dealing with column naming inconsistencies in raw CSVs
- Debugging R subsetting errors (closure vs dataframe mistake)
- Balancing simplicity in design with accuracy in stats
- Keeping narrative concise but meaningful for each slide

---

## ✅ What I’d Improve with More Time
- Automate % calculations for any new datasets
- Add confidence intervals or error bars if data available
- Expand Slide 3 into a full roadmap with partner examples

---

Prepared by: [Your Name]  
June 2025
