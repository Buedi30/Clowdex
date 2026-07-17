# Clowdex Skill-Bibliothek

> 1.792 professionelle Skills in 32 Kategorien.
> Jeder Skill ist eine strukturierte Arbeitsanleitung — kein einfaches Prompt-Template.

## So funktionieren Skills

Skills werden automatisch aktiviert, wenn Claude eine passende Aufgabe erkennt, oder manuell über `/skill-name`.
Jeder Skill:
- Liest den Projektkontext aus `memory.md` und `knowledge-base.md`
- Folgt einem strukturierten Prozess mit benannten Frameworks
- Erzeugt ein definiertes Ausgabeformat
- Prüft die Qualität vor der Auslieferung
- Aktualisiert den Projekt-Memory mit Erkenntnissen

## Kategorien

| Kategorie | Skills | Beschreibung |
|-----------|--------|-------------|
| [Marketing & Advertising](./marketing/) | 76 | Kampagnenstrategie, Zielgruppenanalyse, Markenpositionierung und Werbung über alle Kanäle |
| [Content & Copywriting](./content/) | 88 | Texterstellung in allen Formaten — Blogposts, Whitepaper, Landingpages, Skripte und mehr |
| [Social Media](./social-media/) | 69 | Plattformspezifische Inhalte, Planung, Engagement und Analytics für alle großen Plattformen |
| [SEO & Search](./seo/) | 57 | Suchmaschinenoptimierung — Keyword-Recherche, On-Page, Technik, Linkaufbau, lokale SEO und Analytics |
| [Sales & Revenue](./sales/) | 66 | Vertriebsstrategie, Akquise, Outreach, Verhandlung, Pipeline-Management und Revenue Operations |
| [Email Marketing](./email/) | 51 | E-Mail-Kampagnen, Automatisierung, Sequenzen, Zustellbarkeit und Abonnenten-Management |
| [Finance & Accounting](./finance/) | 60 | Finanzmodellierung, Budgetierung, Prognosen, Preisgestaltung und Finanzberichte |
| [Legal & Compliance](./legal/) | 54 | Verträge, Richtlinien, Compliance-Frameworks und rechtliche Dokumentation |
| [Operations & Project Management](./operations/) | 60 | Prozessdesign, Projektplanung, Ressourcenmanagement und operative Exzellenz |
| [HR & People](./hr/) | 57 | Recruiting, Onboarding, Performance Management, Kultur, Schulung und Mitarbeitererfahrung |
| [Product Management](./product/) | 63 | Produktstrategie, Roadmaps, Nutzerforschung, Priorisierung und Produkt-Operations |
| [Software Development](./development/) | 78 | Code-Qualität, Architektur, Testing, CI/CD, Dokumentation, Debugging und Engineering-Praktiken |
| [Data & Analytics](./data/) | 57 | Datenanalyse, Visualisierung, Reporting, BI-Dashboards und Datenstrategie |
| [E-commerce](./ecommerce/) | 54 | Online-Shop-Management, Produktlistings, Conversion-Optimierung und Marktplatzstrategie |
| [Customer Success & Support](./customer-success/) | 48 | Kunden-Onboarding, Retention, Support-Operations und Kundenerfahrung |
| [Startup & Entrepreneurship](./startup/) | 60 | Geschäftsplanung, Fundraising, Validierung, Wachstum und Startup-Operations |
| [Education & Training](./education/) | 51 | Kurserstellung, Lehrplandesign, Bewertung, Workshops und Lernmanagement |
| [Real Estate](./real-estate/) | 45 | Immobilienangebote, Marktanalyse, Investitionsanalyse und Immobilien-Operations |
| [Healthcare](./healthcare/) | 48 | Patientenkommunikation, Praxismanagement, Compliance, Wellness-Programme und Gesundheitsinhalte |
| [Travel & Hospitality](./travel/) | 54 | Reiseplanung, Hotellerie-Operations, Gästeerfahrung und Reise-Inhalte |
| [Design & Creative](./design/) | 54 | Design-Briefings, Markenidentität, UX/UI, Creative Direction und visuelle Designprozesse |
| [Consulting & Strategy](./consulting/) | 54 | Strategie-Frameworks, Marktanalyse, Kundenprojekte und Beratungsleistungen |
| [Personal Productivity](./productivity/) | 57 | Zeitmanagement, Zielsetzung, Entscheidungsfindung, Kommunikation und persönliche Effektivität |
| [Cybersecurity & Information Security](./cybersecurity/) | 54 | Penetrationstests, Bedrohungsanalyse, Sicherheitsarchitektur, Compliance (SOC 2, ISO 27001, NIST), Incident Response, SecOps und Datenschutz |
| [AI & Automation](./ai-automation/) | 65 | KI-Implementierung, Prompt Engineering, Workflow-Automatisierung, KI-Strategie, EU AI Act Compliance, LLM-Architektur, KI-Governance und Bias-Audits |
| [Nonprofit & Social Impact](./nonprofit/) | 48 | Fundraising, Förderanträge, Freiwilligenmanagement und gemeinnützige Operations |
| [Media & Publishing](./media/) | 45 | Content-Veröffentlichung, Redaktionsmanagement, Medienproduktion und Reichweitenaufbau |
| [Construction & Trades](./construction/) | 42 | Projektkalkulation, Arbeitssicherheit, Kundenmanagement und Handwerks-Operations |
| [Food & Beverage](./food-beverage/) | 42 | Gastronomie-Betrieb, Menügestaltung, Lebensmittelsicherheit und Hospitality-Management |
| [Fitness & Wellness](./fitness-wellness/) | 45 | Programmgestaltung, Kundenbetreuung, Wellness-Coaching und Fitness-Business-Operations |
| [Agriculture & Farming](./agriculture/) | 45 | Betriebsplanung, Anbaumanagement, Tierhaltung und landwirtschaftliche Geschäftsführung |
| [Energy & Sustainability](./energy/) | 45 | Energiemanagement, Nachhaltigkeitsberichte, Umwelt-Compliance und grüne Initiativen |

## Schnellstart

1. Starte einen Skill, indem du Claude bittest, die Aufgabe auszuführen (Skills werden automatisch erkannt)
2. Oder rufe direkt auf: „Nutze den [skill-name] Skill für..."
3. Skills lesen den Projektkontext automatisch
4. Die Ausgabe folgt einem strukturierten Format mit Qualitätsprüfungen
5. Erkenntnisse werden für zukünftige Verbesserungen festgehalten

## Qualitätsstandard

Jeder Skill in dieser Bibliothek erfüllt einen einheitlichen Qualitätsstandard:
- **Umsetzbar**: Jeder Schritt sagt Claude genau, was zu tun ist
- **Konkret**: Enthält spezifische Zahlen, Frameworks und Schwellenwerte
- **Vollständig**: Deckt den gesamten Workflow von Eingabe bis Ergebnis ab
- **Systemintegriert**: Arbeitet mit Memory, Wissensdatenbank und Prüfprotokoll zusammen
- **Validiert**: Enthält eine Qualitäts-Checkliste vor der Auslieferung
