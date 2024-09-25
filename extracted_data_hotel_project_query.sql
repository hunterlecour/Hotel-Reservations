SELECT 
    b.adults,
    b.children,
    b.babies,
    b.lead_time,
    b.days_in_stay,
    b.adr,
    b.arrival_date,
    m.meal,
    c.country,
    b.is_repeated_guest,
    a.agent_name,
    comp.company_name,
    seg.market_segment,
    chan.distribution_channel,
    cus.customer_type,
    CASE
        WHEN b.reserved_room_type != b.assigned_room_type THEN 'Yes'
        ELSE 'No'
    END AS 'Room Change',
    b.reserved_room_type,
    b.assigned_room_type,
    b.total_of_special_requests,
    b.required_car_parking_spaces
FROM
    bookings b
        LEFT JOIN
    meals m ON b.meal_id = m.meal_id
        LEFT JOIN
    countries c ON b.country_code = c.alpha_3_code
        LEFT JOIN
    agents a ON b.agent_id = a.agent_id
        LEFT JOIN
    companies comp ON b.company_id = comp.company_id
        LEFT JOIN
    segments seg ON b.segment_id = seg.segment_id
        LEFT JOIN
    channels chan ON b.channel_id = chan.channel_id
        LEFT JOIN
    customer_types cus ON b.customer_type_id = cus.customer_type_id