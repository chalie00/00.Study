/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/ 

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "I2c.h"

/*******************************************************************************
* Function : SDA1_InputModeSet
*******************************************************************************/
void SDA1_InputModeSet(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	GPIO_InitStruct.GPIO_Pin = I2C1_SDA;				
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN_FLOATING; 	
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStruct);
  	Delay_Us(100);
}

/*******************************************************************************
* Function : SDA2_InputModeSet
*******************************************************************************/
void SDA2_InputModeSet(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	GPIO_InitStruct.GPIO_Pin = I2C2_SDA;				
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN_FLOATING; 	
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStruct);
}

/*******************************************************************************
* Function : SDA1_OutputModeSet
*******************************************************************************/
void SDA1_OutputModeSet(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	GPIO_InitStruct.GPIO_Pin = I2C1_SDA;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_Out_OD;	
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStruct);
}

/*******************************************************************************
* Function : SDA2_OutputModeSet
*******************************************************************************/
void SDA2_OutputModeSet(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	GPIO_InitStruct.GPIO_Pin = I2C2_SDA;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_Out_OD;	
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStruct);
}

/*******************************************************************************
* Function : I2C1_Start
*******************************************************************************/
void I2C1_Start(void)
{
	GPIO_SetBits(GPIOB, I2C1_SDA);	// 1
	GPIO_SetBits(GPIOB, I2C1_SCL);	// 1
 	Delay_Us(10);
	GPIO_ResetBits(GPIOB, I2C1_SDA);	// 0
 	Delay_Us(10);
}

/*******************************************************************************
* Function : I2C2_Start
*******************************************************************************/
void I2C2_Start(void)
{
	GPIO_SetBits(GPIOB, I2C2_SDA);	// 1
	GPIO_SetBits(GPIOB, I2C2_SCL);	// 1
 	Delay_Us(10);
	GPIO_ResetBits(GPIOB, I2C2_SDA);	// 0
 	Delay_Us(10);
}

/*******************************************************************************
* Function : I2C1_AckWait
*******************************************************************************/
void I2C1_AckWait(void)
{
	u8 BCnt;
	
	GPIO_ResetBits(GPIOB, I2C1_SDA);
	SDA1_InputModeSet();	// SDA INPUT
 	Delay_Us(10);
	GPIO_SetBits(GPIOB, I2C1_SCL); // 1
 	Delay_Us(10);
	BCnt = 0;
  	while(GPIO_ReadInputDataBit(GPIOB, I2C1_SDA))
  	{
	    	BCnt++;

	    	if(BCnt > 20)
		{
		      	BCnt = 0;
		      	break;
	    	}
  	}
 	Delay_Us(10);
	GPIO_ResetBits(GPIOB, I2C1_SCL);	// 0
 	Delay_Us(10);
	SDA1_OutputModeSet();	// SDA OUTPUT
	GPIO_ResetBits(GPIOB, I2C1_SDA);
}

/*******************************************************************************
* Function : I2C2_AckWait
*******************************************************************************/
void I2C2_AckWait(void)
{
	u8 BCnt;
	
	GPIO_ResetBits(GPIOB, I2C2_SDA);
	SDA2_InputModeSet();	// SDA INPUT
 	Delay_Us(10);
	GPIO_SetBits(GPIOB, I2C2_SCL); // 1
 	Delay_Us(10);
	BCnt = 0;
  	while(GPIO_ReadInputDataBit(GPIOB, I2C2_SDA))
  	{
	    	BCnt++;

	    	if(BCnt > 20)
		{
		      	BCnt = 0;
		      	break;
	    	}
  	}
 	Delay_Us(10);
	GPIO_ResetBits(GPIOB, I2C2_SCL);	// 0
 	Delay_Us(10);
	SDA2_OutputModeSet();	// SDA OUTPUT
	GPIO_ResetBits(GPIOB, I2C2_SDA);
}

/*******************************************************************************
* Function : I2C1_NakSend
*******************************************************************************/
void I2C1_NakSend(void)
{
	GPIO_SetBits(GPIOB, I2C1_SDA);
 	Delay_Us(200);
	GPIO_SetBits(GPIOB, I2C1_SCL);	// Clock High
 	Delay_Us(200);
	GPIO_ResetBits(GPIOB, I2C1_SCL);	// Clock Low
 	Delay_Us(200);
	GPIO_ResetBits(GPIOB, I2C1_SDA);
 	Delay_Us(200);
}

/*******************************************************************************
* Function : I2C2_NakSend
*******************************************************************************/
void I2C2_NakSend(void)
{
	GPIO_SetBits(GPIOB, I2C2_SDA);
 	Delay_Us(200);
	GPIO_SetBits(GPIOB, I2C2_SCL);	// Clock High
 	Delay_Us(200);
	GPIO_ResetBits(GPIOB, I2C2_SCL);	// Clock Low
 	Delay_Us(200);
	GPIO_ResetBits(GPIOB, I2C2_SDA);
 	Delay_Us(200);
}

/*******************************************************************************
* Function : I2C1_Stop
*******************************************************************************/
void I2C1_Stop(void)
{
	GPIO_ResetBits(GPIOB, I2C1_SDA);
 	Delay_Us(10);
	GPIO_SetBits(GPIOB, I2C1_SCL);	// Clock High
 	Delay_Us(10);
	GPIO_SetBits(GPIOB, I2C1_SDA);
 	Delay_Us(10);
}

/*******************************************************************************
* Function : I2C2_Stop
*******************************************************************************/
void I2C2_Stop(void)
{
	GPIO_ResetBits(GPIOB, I2C2_SCL);
	GPIO_ResetBits(GPIOB, I2C2_SDA);
	Delay_Us(10);
	GPIO_SetBits(GPIOB, I2C2_SCL);	// Clock High
 	Delay_Us(10);
	GPIO_SetBits(GPIOB, I2C2_SDA);
 	Delay_Us(10);
}

/*******************************************************************************
* Function : I2C1_Send_8bit
*******************************************************************************/
void I2C1_Send_8bit(u8 SendData)
{
	u8 Count;
	
	GPIO_ResetBits(GPIOB, I2C1_SCL);	// Clock Low
 	Delay_Us(10);
	
 	for(Count = 0; Count < 8; Count++)
  	{
 		if(SendData & 0x80) 	GPIO_SetBits(GPIOB, I2C1_SDA); // '1'
		else GPIO_ResetBits(GPIOB, I2C1_SDA);	// '0'
		
 		Delay_Us(5);
		GPIO_SetBits(GPIOB, I2C1_SCL);	// Clock High
		Delay_Us(10);
		GPIO_ResetBits(GPIOB, I2C1_SCL);	// Clock Low
		Delay_Us(5);
 		SendData <<= 1;
	}

	GPIO_ResetBits(GPIOB, I2C1_SDA);	// '0'
}

/*******************************************************************************
* Function : I2C2_Send_8bit
*******************************************************************************/
void I2C2_Send_8bit(u8 SendData)
{
	u8 Count;
	
	GPIO_ResetBits(GPIOB, I2C2_SCL);	// Clock Low
 	Delay_Us(10);
	
 	for(Count = 0; Count < 8; Count++)
  	{
 		if(SendData & 0x80) 	GPIO_SetBits(GPIOB, I2C2_SDA); // '1'
		else GPIO_ResetBits(GPIOB, I2C2_SDA);	// '0'
		
 		Delay_Us(5);
		GPIO_SetBits(GPIOB, I2C2_SCL);	// Clock High
		Delay_Us(10);
		GPIO_ResetBits(GPIOB, I2C2_SCL);	// Clock Low
		Delay_Us(5);
 		SendData <<= 1;
 	}
	
	GPIO_ResetBits(GPIOB, I2C2_SDA);	// '0'
}

/*******************************************************************************
* Function : I2C1_Read_8bit
*******************************************************************************/
u8 I2C1_Read_8bit(void)
{
	u8 Count;
	u8 Data;
	
 	SDA1_InputModeSet();	// SDA INPUT
	GPIO_ResetBits(GPIOB, I2C1_SCL);	// Clock Low
 	Delay_Us(10);
	
 	Data = 0;
  	for(Count = 0; Count < 8; Count++)
  	{
		GPIO_SetBits(GPIOB, I2C1_SCL);	// Clock High
 		Delay_Us(10);
		
		if(GPIO_ReadInputDataBit(GPIOB, I2C1_SDA)) Data |= (0x80>>Count);	// '1' 

		GPIO_ResetBits(GPIOB, I2C1_SCL);	// Clock Low
 		Delay_Us(10);
  	}
	
	SDA1_OutputModeSet();	// SDA OUTPUT
	GPIO_ResetBits(GPIOB, I2C1_SDA);	// '0'	
	return Data;
}

/*******************************************************************************
* Function : I2C2_Read_8bit
*******************************************************************************/
u8 I2C2_Read_8bit(void)
{
	u8 Count;
	u8 Data;
	
 	SDA2_InputModeSet();	// SDA INPUT
	GPIO_ResetBits(GPIOB, I2C2_SCL);	// Clock Low
 	Delay_Us(10);
	
 	Data = 0;
  	for(Count = 0; Count < 8; Count++)
  	{
		GPIO_SetBits(GPIOB, I2C2_SCL);	// Clock High
 		Delay_Us(10);

	   	if(GPIO_ReadInputDataBit(GPIOB, I2C2_SDA)) Data |= (0x80>>Count);	// '1' 
	   	
		GPIO_ResetBits(GPIOB, I2C2_SCL);	// Clock Low
 		Delay_Us(10);
  	}
	
	SDA2_OutputModeSet();	// SDA OUTPUT
	GPIO_ResetBits(GPIOB, I2C2_SDA);	// '0'	
	return Data;
}

/*******************************************************************************
* Function : I2C1_Write
*******************************************************************************/
void I2C1_Write(u8 ObjAddr, u16 Addr, u8 bData)
{
 	u8 DevAddr;
 	u8 Data;

	I2C1_Start();
 	DevAddr = ObjAddr | WRITE_MODE;		// ADDRESS(7bit) + R/W(1bit)
	I2C1_Send_8bit(DevAddr);
	I2C1_AckWait();  
	Data = (u8)((Addr >> 8) & 0xff);
	I2C1_Send_8bit(Data);
	I2C1_AckWait();
	Data = (u8)(Addr & 0xFF);
	I2C1_Send_8bit(Data);
	I2C1_AckWait();
	I2C1_Send_8bit(bData);
	I2C1_AckWait();
	I2C1_Stop();
 	Delay_ms(5);
}

/*******************************************************************************
* Function : I2C1_Read
*******************************************************************************/
u8 I2C1_Read(u8 ObjAddr, u16 Addr)
{
 	u8 DevAddr;
 	u8 Data;

	I2C1_Start();
 	DevAddr = ObjAddr | WRITE_MODE;		// ADDRESS(7bit) + Write(1bit)
	I2C1_Send_8bit(DevAddr);
	I2C1_AckWait();  
	Data = (u8)((Addr >> 8) & 0xFF);
	I2C1_Send_8bit(Data);
	I2C1_AckWait();
	Data = (u8)(Addr & 0xFF);
	I2C1_Send_8bit(Data);
	I2C1_AckWait();
	I2C1_Start();
	DevAddr = ObjAddr | READ_MODE;		// ADDRESS(7bit) + Read(1bit)
	I2C1_Send_8bit(DevAddr);
	I2C1_AckWait();
	Data = I2C1_Read_8bit();
	I2C1_AckWait();
	I2C1_Stop();
 	Delay_1us(100);
 	return Data;
}

/*******************************************************************************
* Function : I2C2_Write
*******************************************************************************/
void I2C2_Write(u8 ObjAddr, u16 Addr, u8 bData)
{
 	u8 DevAddr;
 	u8 Data;

	I2C2_Start();
 	DevAddr = ObjAddr | WRITE_MODE;		// ADDRESS(7bit) + R/W(1bit)
	I2C2_Send_8bit(DevAddr);
	I2C2_AckWait();  
	Data = (u8)((Addr >> 8) & 0xff);
	I2C2_Send_8bit(Data);
	I2C2_AckWait();
	Data = (u8)(Addr & 0xFF);
	I2C2_Send_8bit(Data);
	I2C2_AckWait();
	I2C2_Send_8bit(bData);
	I2C2_AckWait();
	I2C2_Stop();
 	Delay_ms(5);
}

/*******************************************************************************
* Function : I2C2_Read
*******************************************************************************/
u8 I2C2_Read(u8 ObjAddr, u16 Addr)
{
 	u8 DevAddr;
 	u8 Data;

	I2C2_Start();
 	DevAddr = ObjAddr | WRITE_MODE;		// ADDRESS(7bit) + Write(1bit)
	I2C2_Send_8bit(DevAddr);
	I2C2_AckWait();  
	Data = (u8)((Addr >> 8) & 0xFF);
	I2C2_Send_8bit(Data);
	I2C2_AckWait();
	Data = (u8)(Addr & 0xFF);
	I2C2_Send_8bit(Data);
	I2C2_AckWait();
	I2C2_Start();
	DevAddr = ObjAddr | READ_MODE;		// ADDRESS(7bit) + Read(1bit)
	I2C2_Send_8bit(DevAddr);
	I2C2_AckWait();
	Data = I2C2_Read_8bit();
	I2C2_AckWait();
	I2C2_Stop();
 	Delay_1us(100);
 	return Data;
}

/*******************************************************************************
* Function : EpromWrite
*******************************************************************************/
void EpromWrite(u16 EepAddr, u8 EepData)
{
	I2C2_Write(AT24C256_ADDR, EepAddr, EepData);
}

/*******************************************************************************
* Function : EpromRead
*******************************************************************************/
u8 EpromRead(u16 EepAddr)
{
	return I2C2_Read(AT24C256_ADDR, EepAddr);
}

/*******************************************************************************
* I2C1 - TW9900 (DECODER 2CH)
- slave_addr 		: DEVICE ADDRESS
- AddrByte   		: WORD_ADDR/BYTE_ADDR
- StartAddress	: Write Start Address
- Data			: Write Data(Byte)
*******************************************************************************/
uint32_t TW9900_I2C1_ByteWrite(uint8_t slave_addr, uint8_t AddrByte, int32_t StartAddress, uint8_t Data)
{
	/* Clear EV6 by setting again the PE bit */
	I2C_Cmd(I2C1, ENABLE);

	/* Send STRAT condition */
	I2C_GenerateSTART(I2C1, ENABLE);

	/* Test on EV5 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));

	if(StartAddress !=-1) 
	{
		/* Send TW9900 address for write */
		I2C_Send7bitAddress(I2C1, slave_addr |(uint8_t)(StartAddress>>15), I2C_Direction_Transmitter);
		/* Test on EV6 and clear it */
		while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

		if (AddrByte==WORD_ADDR)
		{
			/* Send the TW9900's internal address to write to */
			I2C_SendData(I2C1, (uint8_t)(StartAddress>>8));
			/* Test on EV8 and clear it */
			while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
		}
		
		/* Send the TW9900's internal address to write to */
		I2C_SendData(I2C1, (uint8_t)StartAddress);
		/* Test on EV8 and clear it */
		while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	}
	else 
	{
		/* Send TW9900 address for write */
		I2C_Send7bitAddress(I2C1, slave_addr , I2C_Direction_Transmitter);
		/* Test on EV6 and clear it */
		while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	}

	/* Send the byte to be written */
	I2C_SendData(I2C1, Data);
	/* Test on EV8 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));

	/* Send STOP condition */
	I2C_GenerateSTOP(I2C1, ENABLE);

	//for(i=0; i<100; i++);

	/* Clear EV6 by setting again the PE bit */
	//I2C_Cmd(I2C1, DISABLE);

	/* If all operations OK, return sEE_OK (0) */
	return sEE_OK;
}

/*******************************************************************************
* I2C1 - TW9900 (DECODER 2CH)
- slave_addr 		: DEVICE ADDRESS
- AddrByte		: WORD_ADDR/BYTE_ADDR
- StartAddress	: Read Address
*******************************************************************************/
uint8_t TW9900_I2C1_ByteRead(uint8_t slave_addr, uint8_t AddrByte, uint32_t StartAddress)
{
	uint8_t Data;
	uint16_t i;

	Delay_1ms(2);

	/* Clear EV6 by setting again the PE bit */
	I2C_Cmd(I2C1, ENABLE);

	/* Send START condition */
	I2C_GenerateSTART(I2C1, ENABLE);
	/* Test on EV5 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));

	/* Send TW9900 address for write */
	I2C_Send7bitAddress(I2C1, slave_addr |(uint8_t)(StartAddress>>15), I2C_Direction_Transmitter);
	/* Test on EV6 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

	/* Clear EV6 by setting again the PE bit */
	if (AddrByte == WORD_ADDR)
	{
		/* Send the TW9900's internal address to write to */
		I2C_SendData(I2C1, (uint8_t)(StartAddress>>8));
		/* Test on EV8 and clear it */
		while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	}

	/* Send the TW9900's internal address to write to */
	I2C_SendData(I2C1, (uint8_t)StartAddress);
	/* Test on EV8 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	I2C_AcknowledgeConfig(I2C1, DISABLE);

	/* Send STRAT condition a second time */
	I2C_GenerateSTART(I2C1, ENABLE);

	/* Test on EV5 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_MODE_SELECT));

	/* Send TW9900 address for read */
	I2C_Send7bitAddress(I2C1, slave_addr |(uint8_t)(StartAddress>>15), I2C_Direction_Receiver);
	/* Test on EV6 and clear it */
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));

	I2C_AcknowledgeConfig(I2C1, DISABLE);
	while(!I2C_CheckEvent(I2C1, I2C_EVENT_MASTER_BYTE_RECEIVED));

	Data =I2C_ReceiveData(I2C1);

	/* Send STOP Condition */
	I2C_GenerateSTOP(I2C1, ENABLE);

	for(i=0; i<50; i++);

	/* Clear EV6 by setting again the PE bit */
	I2C_AcknowledgeConfig(I2C1, ENABLE);

	return Data;
}

