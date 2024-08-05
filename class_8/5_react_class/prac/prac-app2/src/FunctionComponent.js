// 함수형
// 직관적으로 함수 이름 만들고, 보여줄 html 요소 return문에 작성.
// +화살표 함수(함수표현식)로 작성해도되고, 함수선언문으로 작성해도 된다.

const FunctionComponent = (props) => {
    console.log("Function props >>> ", props); // {name : 'xxx"}
    const { food } = props;
    const teacher = "chalKoooo";

    return (
        <>
            <h1>Hi~ {teacher}!</h1>
            <p>여기는 Funtional Component!</p>
            {/* props 사용할 때 */}
            <p>
                {/* 새로운 컴포넌트의 이름은 <b>{props.name}</b> */}
            </p>
            <p>과일을 역시 <b style={{color: 'red'}}>{food}</b>가 진리다 알겠냐?</p>
        </>
    )
}


FunctionComponent.defaultProps = {
    food : "Apple"
}



export default FunctionComponent;
