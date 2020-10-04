# petrol_params = [km,fc,p,am,mc]
# diesel_params = [km,fc,p,am,mc]

petrol_params = [int(input()) for i in range(5)]
diesel_params = [int(input()) for i in range(5)]

def total_cost(lst):
    return (lst[2]+(lst[3]*(lst[0]/lst[1]))+lst[4])

print(("petrol","diesel") [(total_cost(petrol_params)<total_cost(diesel_params))])
