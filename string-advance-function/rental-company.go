package main

import "fmt"


type Customer struct {
	Name string
	Address string
	RentedVehicles []Vehicle
}

type RentalSystem struct {
	Customers []Customer
	Vehicles []Vehicle
}

type Vehicle struct {
	Name string
	RentPrice float64
}

func main() {
	rs := RentalSystem{}

	rs.AddVehicle("Tesla", 60.0)
	rs.AddVehicle("BMW", 40.0)
	rs.AddVehicle("Ford", 35.0)

	rs.AddCustomer("Hadi Hamdam", "Cluster Alloggio Gading Serpong")
	rs.AddCustomer("Another Alterra Alumni")

	rs.AddRentalVehicle("Hadi Hamdam", "Tesla")
	rs.AddRentalVehicle("Hadi Hamdam", "BMW")

	fmt.Println("Customer:")
	rs.DisplayCustomers()

	fmt.Println("\nRented Vehicles:")
	rs.DispalyRentedVehicles()

	rs.ReturnVehicle("Hadi Hamdam", "Tesla")
	fmt.Println("\nUpdated Rented Vehicles")
	rs.DispalyRentedVehicles()


}

func (rs *RentalSystem) AddCustomer(name, address string) {
	customer := Customer{Name: name, Address: address}
	rs.Customers = append(rs.Customers, customer)
}

func (rs *RentalSystem) AddVehicle(name string, rentPrice float64) {
	vehicle := Vehicle{Name: name, RentPrice: rentPrice}
	rs.Vehicles = append(rs.Vehicles, vehicle)
}

func (rs *RentalSystem) RentVehicle(customerName, vehicleName string) {
	var customer *Customer
	var vehicle *Vehicle 
	for i := range rs.Customers {
		if rs.Customers[i].Name == customerName {
			customer = &rs.Customers[i]
			break
		}
	}
	if customer == nil {
		fmt.Println("Customer not found")
		return
	}
	for i := range rs.Vehicles {
		if rs.Vehicles[i].Name == vehicleName {
			vehicle = &rs.Vehicles[i]
			break
		}
	}
	if vehicle == nil {
		fmt.Println("Vehicle not found")
		return
	}
	customer.RentedVehicles = append(customer.RentedVehicles, *vehicle)
	rs.Vehicles = append(rs.Vehicles[:vehicleIndex(rs.Vehicles, vehicleName)], rs.Vehicles[vehicleIndex(rs.Vehicles, vehicleName)+1:]...)
}

func (rs *RentalSystem) ReturnVehicle(customerName, vehicleName string) {
	var customer *Customer 
	var vehicle *Vehicle

	for i := range rs.Customers {
		if rs.Customers[i].Name == customerName {
			customer = &rs.Customers[i]
			break
		}
	}
	if customer == nil {
		fmt.Println("Customer not found")
		return
	}

	for i := range customer.RentedVehicles {
		if customer.RentedVehicles[i].Name == vehicleName {
			vehicle = &customer.RentedVehicles[i]
			break
		}
	}
	if vehicle := nil {
		fmt.Println("Vehicle not found in customer's rented vehicles")
		return
	}
	customer.RentedVehicles = append(customer.RentedVehicles[:vehicleIndex(customer.RentedVehicles, vehicleName)], customer.RentedVehicles[vehicleIndex(customer.RentedVehicles,vehicleName)+1:]...)
	rs.Vehicles = append(rs.Vehicles, *vehicle)
}

func (rs *RentalSystem) DisplayCustomers() {
	for _, customer := range rs.Customers {
		fmt.Printf("Name: %s, Address: %\n", customer.Name, customer.Address)
		}
}

func (rs *RentalSystem) DispalyRentedVehicles() {
	for _, customer := range rs.Customers {
		if len (customer.RentedVehicles) > 0 {
			fmt.Printf("Customer: %s\n", customer.Name)
			for _, vehicle := range customer.RentedVehicles {
				fmt.Printf("Vehicle: %s, Rent Price: %.2f\n", vehicle.Name, vehicle.RentPrice)
			}
		}
	}
}

func vehicleIndex(Vehicle []Vehicle, name string) int {
	for i , v := range vehicles {
		if v.Name ==  name {
			return i
		}
	}
	return -1
}

func rentedVehicleIndex (vehicles []Vehicle, name string) int {
	for i, v := range vehicles {
		if v.Name == name {
			return i
		}
	}
	return -1
}


