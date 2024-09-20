document.querySelectorAll('.card').forEach(card => {
    card.addEventListener('mousemove', (e) => {
        const { left, top, width, height } = card.getBoundingClientRect();
        const cardX = left + width / 2;
        const cardY = top + height / 2;
        
        const deltaX = e.clientX - cardX;
        const deltaY = e.clientY - cardY;
        const angleX = deltaY / height * 70;  // 비율을 30으로 증가
        const angleY = deltaX / width * -70;  // 비율을 30으로 증가
    
        card.style.transform = `rotateX(${angleX}deg) rotateY(${angleY}deg)`;
    
        const distance = Math.sqrt(deltaX * deltaX + deltaY * deltaY);
        const maxDistance = Math.sqrt(window.innerWidth * window.innerWidth + window.innerHeight * window.innerHeight);
        const intensity = 1 - distance / maxDistance;
    
        card.style.boxShadow = `0 20px 40px rgba(0, 0, 0, ${0.2 + intensity * 0.4}), 0 0 20px rgba(255, 255, 255, ${intensity * 0.6})`;
    });

    card.addEventListener('mouseleave', () => {
        card.style.transform = 'rotateX(0) rotateY(0)';
        card.style.boxShadow = 'none';
    });
});
