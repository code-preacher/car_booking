CREATE DATABASE car_booking;
USE car_booking;

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'FRANKLIN', 'a@a.com', '123456');

CREATE TABLE `booking` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `routes` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `payment_ref` varchar(200) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `delivery_status` varchar(20) NOT NULL,
  `cartype` text NOT NULL,
  `car` text NOT NULL,
  `time` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `date_created` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `booking` (`id`, `name`, `email`, `routes`, `price`, `payment_ref`, `payment_status`, `delivery_status`, `cartype`, `car`, `time`, `date`, `date_created`) VALUES
(1, 'peter', 'p@p.com', 'makurdi-otukpo', '2100', '47034432', '0', '0', 'BUS', 'Car : Toyota camry,Driver : joe 08074856213', '12:00', '2019-12-09', '17-12-19 @ 10:33 AM');

CREATE TABLE `car` (
  `id` int(30) NOT NULL,
  `cartype` text NOT NULL,
  `cid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `dname` varchar(200) NOT NULL,
  `dno` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `car` (`id`, `cartype`, `cid`, `name`, `model`, `color`, `dname`, `dno`, `date`) VALUES
(1, 'BUS', 'BUS_84135581', 'Toyota', 'camry', 'blue', 'joe', '08074856213', '17-12-19 @ 10:45 AM');

CREATE TABLE `complain` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `chat` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `routes` (
  `id` int(30) NOT NULL,
  `routes` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `routes` (`id`, `routes`, `price`, `date`) VALUES
(1, 'makurdi-otukpo', '2100', '17-12-19 @ 10:22 AM');

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date_created` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `date_created`) VALUES
(1, 'peter', 'p@p.com', '123456', '07063688279', 'London,LA', '17-12-19 @ 10:24 AM');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

ALTER TABLE `booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

ALTER TABLE `car`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

ALTER TABLE `complain`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

ALTER TABLE `routes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;