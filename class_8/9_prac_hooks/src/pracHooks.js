import React from 'react';
import { useForm } from 'react-hook-form';


export default function PracHooks() {
    const {
        register, // input 할당, value 변경 감지.
        handleSubmit, // form submit 시 호출.
        formState: { errors }, // 폼 상태 객체
        watch, // 특정 폼 필드의 값을 실시간으로 사용
    } = useForm();

    // handleSubmit(func A [, func B]) - 두 개의 함수를 받습니다.
    // func A : "필수", 유효할 때 실행
    // func B : "선택", 유효하지 않을 때 실행

    // func A 용
    const onValid = (data) => {
        console.log('onValid >>>>> ', data); 
    };

    // func B 용
    const onInValid = (err) => {
        console.log('onInValid >>>>> ', err);
    };

    return (
        <div>
            <h1>react-hook-form Prac</h1>
            <form onSubmit={handleSubmit(onValid, onInValid)}>
                <input
                    type="text"
                    placeholder="username"
                    // register 함수
                    {...register('username', {
                        required: '이름은 필수 항목입니다',
                        minLength: {
                            message: '이름은 최소 2글자 이상 작성해주세요',
                            value: 2,
                        },
                    })}
                    
                />
                {errors.username?.message}
                
                <br />

                <input
                    type="number" // 숫자만 입력 가능하게 설정
                    placeholder="age"
                    {...register('age', {
                        required: '나이를 입력해주세요.',
                        validate: {
                            positiveNumber: (value) =>
                                parseFloat(value) > 0 || '0 이상의 숫자만 입력 가능합니다.',
                        },
                    })}
                />
                {errors.age?.message}
                <br />

                <button type="submit">Submit</button>
            </form>
        </div>
    );
}