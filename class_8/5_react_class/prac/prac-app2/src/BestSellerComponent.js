
const BestSellerComponent = (props) => {

    const { title,author,price,type } = props;


    return (
        <div className="Seller">
            <h1 className="best"> 올해 최고 필독서 </h1>
            <p>사람으로 태어났으면 반드시 읽어야 하는 책</p>
            
            <p>
                <img src="https://cdn.pixabay.com/photo/2011/03/30/10/30/traffic-light-6010_1280.jpg" alt="책표지" height="300px" />
            </p>
            <p><b style={{color: 'black'}}>{title}</b></p>
            <p>저자 :{author}</p>
            <p>판매가 : {price}</p>
            <p>구분 : {type}</p>
        </div>
    )
}


BestSellerComponent.defaultProps = {
    food : "Apple"
}



export default BestSellerComponent;
