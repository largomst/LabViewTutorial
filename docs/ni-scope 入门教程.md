- 该文档是 ni high-speed digitizers help 文件的笔记，作为修改微流控程序数据采集部分的参考。
- NI-SCOPE 既是应用程序编程接口（API），又是NI 高速数字化仪器的驱动程序。
## NI-SCOPE 编程流
### 基本步骤 
1. 初始化会话
2. 配置应用程序
3. 获取数据
4. 检索错误信息
5. 关闭会话
#### 初始化会话
- 自 labview中，使用 initialize 函数来创建一个**会话**（session），建立程序和仪器之间的通信。
#### 配置应用程序
- 在 labview 中可以使用**自动配置**（Auto Setup）自动完成设备相关的配置。也可以采用手动配置，需要配置的项包括：触发器、输入阻抗、直流偏移、垂直范围和采样率等等。
- 配置获取数据类型（Acquisition Settings）：采集的数据类型相关的配置
- 配置垂直（Vertical）和通道设置（Channel Settings）：通道的分辨率、范围相关配置。其中注意通道参数是一个字符串类型。每个通道的都有独立的垂直设置，如果要对多个通道使用相同的配置可以用 `0,1` 这样的形式设置；要分别配置多个通道，可以调用配置函数多次，每次单独设置一个通道。
- 配置水平设置（Horizontal Settings）：水平时许参数会应用到所有通道。水平设置包括记录数（num records）、采样率（sample rate）、参考位置（reference position）和最小记录长度（mini record length）的配置。
- 配置触发器（Triggers）：labview默认的触发器是即时触发器，即启动后立刻开始记录。
#### 获取数据
- NI-SCOPE 有两种获取数据的方式——Read 和 Fetch。
- Read 函数是从一起中获取数据的最简单方法，该函数会启动一个采集，等待采集完成并获取数据。Fetch 函数会假定仪器已经处于采集状态。Fetch 函数需要结合采集状态函数使用。Read 和 Fetch 函数都需要接受一个超时参数和一个要获取的点的数量参数。
- 如果要获取二进制数据，必须使用 Fetch 函数。如果要使用软件触发器采集数据，也必须使用 Fetch 函数。Read 函数是阻塞的，会阻塞直到读取操作完成。
- 获取数据通常包括下面的步骤：
  
  1. 声明波形数组（在除了 labview 的其他变成语言中需要该操作） 
  2. 启动一个采集：启动采集操作使仪器进入数据采集状态，仪器会将采集的数据存储到板载内存储器。仪器会先按照预触发点的数量执行采样，当存储的点的数量达到出发点数后，仪器会等待触发。在等待过程中，仪器仍然会执行采样并存储数据到板载存储器上。 
  3. 等待数据采集完成 
  4. 将数据从仪器中提取到主机上
#### 检索错误信息
- 要确保每个 VI 都连接了 Error In 和 Error Out 参数避免无法获取到错误信息。
#### 关闭会话
- 关闭会话会释放会话过程中使用到的资源，释放仪器和主机内存传输过程中用到的缓冲区。
#### NI-SCOPE 示例
- 可以访问 `C:\Users\Public\Documents\National Instruments\NI-SCOPE\examples`  查看更多示例。
  
  | NI-SCOPE 示例 | 描述 |
  |----------------|------|
  | niscope ex getting stared.vi | 创建一个使用 niscope 驱动到会话，并使用了自动设置，显示获得的数据。|
  | niscope ex quick start.vi | 创建被配置了一个 niscope 会话，包含了采集类型和触发模式的配置 。|
  | niscope ex configured acuisition.vi | 在每次采集前都配置垂直、水平触发属性。可以在此例中尝试众多配置选项。|
  | niscope ex fetch forever.vi | 演示连续数据采集，一直获取数据直到手动停止。 |
  | niscope stream to disk.vi | 演示将连续数据采集的数据存储到磁盘。 |
  | niscope ex advanced measurement library.vi | 包含一些高级测量库的功能，如滤波和波形处理 |
  | niscope ex multi-device configured acquisition(tclk).vi | 演示如何用 ni-tclk 轻松同步任意数量的仪器 |
## NI-SCOPE SFP
- NI-SCOPE 前面板（SFP）可以采用互动的方式采集数据。
## 设备型号
- PXIe-5105
- 使用 MAX 可以创建虚拟设备