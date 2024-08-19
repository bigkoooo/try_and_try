import { createSlice } from '@reduxjs/toolkit';

const visibleSlice = createSlice({
    name: 'visible', // 즉, plus 액션은 'counter/plus' 라는 타입이다.
    initialState: true,
    reducers: {
        change: (state) => {
            return !state; // 상태를 직접 변경 (immer 라이브러리 내부적으로 사용.)
        }
    },
});

export const { change } = visibleSlice.actions;

export default visibleSlice.reducer;
