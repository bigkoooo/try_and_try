import { createSlice } from '@reduxjs/toolkit';

const counterSlice = createSlice({
    name: 'counter',
    initialState: { number: 0 },
    reducers: {
        plus: (state, action) => {
            state.number += action.payload; 
        },
        minus: (state, action) => {
            state.number -= action.payload;
        },
    },
});

export const { plus, minus } = counterSlice.actions;
export default counterSlice.reducer;