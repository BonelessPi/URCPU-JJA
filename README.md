WRITTEN REPORT:
    Introduction:
        In this section, we provide an overview of the problem statement and outline our strategy for designing the UrCPU. We discuss the importance of memory reliability and the corefunctionalities required of the microprocessor.

        The UrCPU project sought to address the need for a reliable microprocessor capable of executing programs while ensuring memory integrity. Our strategy involved designing a von Neumann style microprocessor with a focus on memory reliability through the implementation of parity-check error correction code. The core functionalites of the UrCPU include storing short programs in memory, executing programs by fetching and transforming data, and correcting memory errors.

    Hardware design decisions:
        Here, we delve into the architectural designs made during the design phase. We discuss the overall design of the UrCPU, including the configuration of registers, the structure of the ALU, the implementation of the memory bank with parity-based ECC, and the design of the control unit.

        During the design phase, we made several crucial hardware design decisions to ensure the functionality and efficiency of the UrCPU. This section discusses the overall architecture of the UrCPU, including the configuration of registers, the structure of the ALU, the implementation of the memory bank with parity-based ECC, and the design of the control unit.

        The UrCPU follows a von Neumann architecture, where instructions and data share the same memory. This architecture simplifies the design and facilitates program execution by allowing instructions to be treated as data. Additionally, the use of single memory system reduces complexity and resource requirements. 

        The UrCPU features a set of general-purpose registers and program segment/pointer registers/ These registers play a crucial role in storing data, memory addresses, and program pointers. By providing separate program segment registers for instruction, static data. and dynamically allocatable memory, the UrCPU effectively organizes memory resources, enabling efficient program execution.

        The ALU is responsible for executing numerical operations and logical computations. To support a wide range of operations, the ALU is designed to operate in either full-word mode or half-word mode, depending on the requirements of the instruction. The ALU's capability to handle arithmetic, logic, bit shift, and comparison operations ensures the versatility of the UrCPU in executing diverse programs.

        The control unit of the UrCPU plays a pivotal role in coordinating the execution of instructions and managing various hardware components. It can be implemented either as a statically programmed finite automaton or a microprogrammed control unit. The control unit ensures that instructions are executed in the correct sequence and that relevant flags are set at each stage of instruction execution.

        The ISA of the UrCPU is designed to accommodate a wide range of instructions, enabling efficient program execution. Each instruction is encoded as a 20-bit word, with specific OP codes representing different operations. The ISA supports essential operations such as program flow control, logic operations, bit shifts, arithmetic operations, and comparisons, providing the necessary functionalities for executing programs effectively.

        These hardware design decisions collectively contribute to the functionality, efficiency, and reliability of the UrCPU, enabling it to execute programs reliably while ensuring memory integrity. By carefully considering the design of each hardware component, the UrCPU achieves its objectives of providing a versatile and robust microprocessor for various computing tasks.

    Instruction set architecture design:
        This section outlines the instruction set architecture (ISA) of the UrCPU. We describe the encoding of operation codes (OP codes) and provide examples of machine language programs. Additionally, we discuss the allocation of bits per OP code and highlight key features of the ISA.

        The ISA of the UrCPU was carefully designed to facilitate program execution and optimized resource utilization. We encoded OP codes corresponding to the machine language of the UrCPU, with each instruction stored as a 20-bit word. This section provides examples of machine language programs and discusses the allocaton of bits per OP code.

    Implementation:
        In this section, we evaluate the advantages and limitations of our design decisions. We discuss the challenges encountered during implementation and explore potential avenues for improvement. Additionally, we assess the scalability of the UrCPU design.

        The implementation phase involved translating our design decisions into functional Verilog code. We encountered challenges during implementation, including ensuring the correct functioning of the ALU and integrating error correction mechanisms into the memory bank. Despite these challenges, we successfully implemented the core functionalities of the UrCPU and conducted thorough testing to validate its performance.

    Discussion and conclusions:
        Here, we summarize the achievements of our project and reflect on its implications. We discuss potential extensions or enhancements to the UrCPU and highlight its relevance in the context of modern computing systems.

        In conlusion, the UrCPU project represents a significant achievement in microprocessor design and implementation. We have demonstrated the feasibility of designing a reliable microprocessor capable of executing programs while ensuring memory integrity. Moving forward, there are opportunities to further enhance the UrCPU's functionality and scalability, such as exploring additional features and optimizing performance.