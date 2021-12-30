import React from "react";

export const ShortenAddress = (address) =>
  `${address.slice(0, 5)}...${address.slice(address.length - 4)}`;
