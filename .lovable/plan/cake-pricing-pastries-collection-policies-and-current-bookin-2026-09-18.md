# Cake pricing, pastries collection, policies, and current booking month

## Goal

Rebuild the empty catalogue from the supplied price guide, make cakes the headline offering while keeping savoury items available under a new "Pastries" collection, calculate custom-cake deposits at 70%, and publish the full ordering policies where customers can read them.

## Current state (checked)

The remixed backend is completely empty: no collections, products, options, delivery areas, saved settings, or past orders. So everything below is a fresh, clean setup — nothing historical is at risk.

## 1. Rebuild the catalogue, with a Pastries collection

- Create the collections: Custom cakes, Cake loaves, Cupcakes, Pastries, and Drinks.
- Move the savoury range into **Pastries** and keep it live and orderable: meat and chicken pies, Scotch eggs, sausage rolls, samosa, spring rolls, small chops. Nothing is archived or hidden.
- Add "Pastries" to the site navigation so customers can browse it directly, alongside Cakes & treats.
- Order the collections so cakes lead and Pastries sits as a secondary line — cakes carry the marketing copy.
- Rewrite homepage, Cakes & treats, pricing, basket, story, contact, footer and page descriptions so cakes are the selling point; pastries are presented as an extra rather than a headline.
- Replace the homepage "both sides of the table" message with a cake benefit: custom design choices with every price shown upfront.
- Remove claims that contradict the offering, including sculpted figures and models.

## 2. Correct cake and cupcake pricing

| Size | 1 layer | 2 layers | 3 layers |
|---|---:|---:|---:|
| 6 inch | $70 | $130 | $180 |
| 8 inch | $100 | $180 | $250 |
| 10 inch | $150 | $250 | $320 |

- Each size/layer combination becomes a stable choice priced in the backend, so checkout can never accept a price sent from the browser.
- Cupcakes: 6 for $35, 12 for $60, 20 for $110.
- Cake loaves, pastries and drinks get sensible published prices in their existing ranges.
- Explain tiered cakes as each tier's base price plus the tiering fee.

## 3. Complete add-on price list

- Simple edible topper — $25
- Custom edible topper — $50
- Fondant covering — $100 per tier
- Fondant letters or small detail — $10
- Special colours — $20
- Bows, cherries, edible glitter, pearls, crowns — $5 each
- Detailed piping work — $10
- Edible printed image — $20
- Tiering fee — $40 for 2 tiers, $60 for 3+
- Rush order under 48 hours — $20

Add-ons are independently combinable, so a customer can pick several and every selected amount lands in the saved order. Show a clear note that fondant sculpted figures and models are not offered.

## 4. 70% custom-cake deposit

- Custom cakes bill 70% of the full line price, including selected paid add-ons.
- Cupcakes, loaves, pastries and drinks are payable in full.
- Delivery is charged in full alongside the amount due now.
- Total, due now, and remaining balance stay consistent across product selection, basket, checkout, card payment, bank transfer, and admin order history, and are saved with each order.
- The admin product editor offers "70% deposit" instead of a fixed dollar amount that can contradict the price.

## 5. Publish the full policies

New Policies page linked from the footer, with the key terms also shown during product selection and checkout:

- Minimum order: $130 buttercream, $280 fondant
- Custom cakes need 2 weeks' notice
- Orders confirmed only after a 70% deposit or full payment
- Balance due before pickup or delivery
- All payments non-refundable
- Pickup in Etobicoke
- Delivery $30 within Etobicoke, $35 elsewhere in the GTA
- Pickup/delivery time changes need 12 hours' notice
- Size, design, flavour or add-on changes need 1 week's notice before the event

Customers acknowledge the policies before placing an order or starting card payment. The text stays visible, not "available on request".

## 6. Booking month stops going stale

Generate "Now booking [month]" from the current date in Toronto time, from one shared source used by the top banner, homepage and contact page.

## 7. Delivery and settings

- Set fixed delivery areas: Etobicoke $30, wider GTA $35.
- Save the bank details and WhatsApp number so transfer instructions and chat links work.
- Update the reusable deployment seed to match, so a future copy of the site starts with the same collections, prices, options, policies and delivery fees.

## 8. Verification

- Check desktop and mobile for homepage, Cakes & treats, Pastries, product details, pricing, policies, basket, checkout, and admin products/settings/orders.
- Verify every price and add-on against the supplied guide.
- Place a test custom-cake order with several add-ons and delivery, confirming the 70% deposit, full delivery charge, balance, payment amount and admin record all agree.
- Confirm pastries browse and order correctly under their own collection.
- Confirm no "August", "DM for price", quote-era wording, or sculpted-model offer remains visible.

## Technical notes

- Payment rule becomes percentage-capable (70%) while legacy fixed-deposit fields stay for compatibility.
- Option groups gain multi-select support for add-ons, with stable keys and server-side validation of every selection and price.
- Catalogue and settings are applied as data inserts/upserts plus a small schema migration; order snapshots stay immutable.
- The uploaded price-guide image is a content reference only — its prices and rules become accessible page content rather than an embedded flyer.
- New and edited UI reuses the existing shadcn components, design tokens, hover/focus/active states, skeleton loaders and empty states already used across the site.
