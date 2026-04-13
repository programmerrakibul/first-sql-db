export interface TCar {
  id: number;
  brand: string;
  model: string;
  year: number;
  price: number;
  color: string;
  condition: number;
  sold: boolean;
}

export interface TDealership {
  id: number;
  state: string;
  city: string;
  established: Date;
}

export interface TStaff {
  id: number;
  dealership_id: number;
  name: string;
  role: string;
}

export interface TSoldCar {
  id: number;
  car_id: number;
  dealership_id: number;
  seller: string;
  sale_date: Date;
  sale_price: number;
}
