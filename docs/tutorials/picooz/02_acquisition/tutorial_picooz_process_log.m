Data = log_picooz;

% format data
y = double(squeeze(Data{1}.Values.Data)); % PWM duty cycle
u = double(squeeze(Data{2}.Values.Data)); %BEMF

% scaling
MaxPWM = 25000;% PWM3max
u = u/MaxPWM;
y = (65535 - y)*3.6/65536;
y = -y;

% for same length:
u = u(1:min(length(u),length(y)));
y = y(1:min(length(u),length(y)));