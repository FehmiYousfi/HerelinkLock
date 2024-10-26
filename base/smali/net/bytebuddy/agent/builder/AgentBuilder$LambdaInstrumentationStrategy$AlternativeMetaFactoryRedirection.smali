.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AlternativeMetaFactoryRedirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6429
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    .line 6424
    sget-object v2, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;
    .locals 1

    .line 6424
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;
    .locals 1

    .line 6424
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$AlternativeMetaFactoryRedirection;

    return-object v0
.end method


# virtual methods
.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 18

    move-object/from16 v6, p3

    .line 6439
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    const/4 v7, 0x3

    const/16 v8, 0x19

    .line 6440
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v9, 0x6

    .line 6441
    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 6442
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xc0

    const-string v1, "java/lang/Integer"

    .line 6443
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 6444
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v10, 0x4

    const/16 v0, 0x36

    .line 6445
    invoke-virtual {v6, v0, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v11, 0x7

    .line 6446
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v12, 0x5

    .line 6447
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x15

    .line 6448
    invoke-virtual {v6, v13, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6449
    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x7e

    .line 6450
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6451
    new-instance v14, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v14}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x99

    .line 6452
    invoke-virtual {v6, v0, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6453
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6454
    invoke-virtual {v6, v13, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v15, 0x1

    .line 6455
    invoke-virtual {v6, v12, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v0, 0x32

    .line 6456
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xc0

    const-string v1, "java/lang/Integer"

    .line 6457
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    move-object/from16 v0, p3

    .line 6458
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x36

    .line 6459
    invoke-virtual {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6460
    invoke-virtual {v6, v13, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/Class"

    .line 6461
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 6462
    invoke-virtual {v6, v0, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6463
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6464
    invoke-virtual {v6, v13, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6465
    invoke-virtual {v6, v8, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6466
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6467
    invoke-virtual {v6, v13, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/System"

    const-string v3, "arraycopy"

    const-string v4, "(Ljava/lang/Object;ILjava/lang/Object;II)V"

    move-object/from16 v0, p3

    .line 6468
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6469
    invoke-virtual {v6, v13, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6470
    invoke-virtual {v6, v13, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x60

    .line 6471
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x36

    .line 6472
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6473
    new-instance v5, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v5}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    .line 6474
    invoke-virtual {v6, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6475
    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/Object;

    .line 6476
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, v3, v15

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v14, v4

    move/from16 v4, v16

    move-object v12, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 6477
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/Class"

    .line 6478
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 6479
    invoke-virtual {v6, v0, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6480
    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v3, v15, [Ljava/lang/Object;

    const-string v0, "[Ljava/lang/Class;"

    aput-object v0, v3, v14

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 6481
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 6482
    invoke-virtual {v6, v13, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6483
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x7e

    .line 6484
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6485
    new-instance v12, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v12}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x99

    .line 6486
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6487
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x5

    .line 6488
    invoke-virtual {v6, v13, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6489
    invoke-virtual {v6, v0, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v0, 0x32

    .line 6490
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xc0

    const-string v1, "java/lang/Integer"

    .line 6491
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Integer"

    const-string v3, "intValue"

    const-string v4, "()I"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 6492
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x8

    const/16 v0, 0x36

    .line 6493
    invoke-virtual {v6, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6494
    invoke-virtual {v6, v13, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/invoke/MethodType"

    .line 6495
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 6496
    invoke-virtual {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6497
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x5

    .line 6498
    invoke-virtual {v6, v13, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6499
    invoke-virtual {v6, v8, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6500
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6501
    invoke-virtual {v6, v13, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/System"

    const-string v3, "arraycopy"

    const-string v4, "(Ljava/lang/Object;ILjava/lang/Object;II)V"

    move-object/from16 v0, p3

    move v13, v5

    move/from16 v5, v16

    .line 6502
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6503
    new-instance v5, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v5}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    .line 6504
    invoke-virtual {v6, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6505
    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move-object v9, v5

    move-object v5, v12

    .line 6506
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 6507
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/invoke/MethodType"

    .line 6508
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x3a

    .line 6509
    invoke-virtual {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6510
    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v3, v15, [Ljava/lang/Object;

    const-string v0, "[Ljava/lang/invoke/MethodType;"

    aput-object v0, v3, v14

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 6511
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 6512
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "()L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xb8

    const-string v3, "getUnsafe"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    .line 6513
    invoke-virtual {v6, v0, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6514
    invoke-virtual {v6, v8, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6515
    invoke-virtual {v6, v8, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "lookupClass"

    const-string v4, "()Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 6516
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/ClassLoader"

    const-string v3, "getSystemClassLoader"

    const-string v4, "()Ljava/lang/ClassLoader;"

    .line 6517
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "net.bytebuddy.agent.builder.LambdaFactory"

    .line 6518
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/ClassLoader"

    const-string v3, "loadClass"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 6519
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "make"

    .line 6520
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v9, 0x10

    const/16 v12, 0x9

    .line 6521
    invoke-virtual {v6, v9, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/Class"

    .line 6522
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v5, 0x59

    .line 6523
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6524
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 6525
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x53

    .line 6526
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6527
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6528
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/String;"

    .line 6529
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6530
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6531
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x5

    .line 6532
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 6533
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6534
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6535
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x6

    .line 6536
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 6537
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6538
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6539
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6540
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 6541
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6542
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6543
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6544
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "Ljava/lang/Object;"

    .line 6545
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6546
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6547
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x6

    .line 6548
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0xb2

    const-string v1, "java/lang/Boolean"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    .line 6549
    invoke-virtual {v6, v0, v1, v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6550
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6551
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6552
    invoke-virtual {v6, v9, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "Ljava/util/List;"

    .line 6553
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6554
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6555
    invoke-virtual {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6556
    invoke-virtual {v6, v9, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const-string v0, "Ljava/util/List;"

    .line 6557
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 6558
    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/Class"

    const-string v3, "getDeclaredMethod"

    const-string v16, "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;"

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v13, v4

    move-object/from16 v4, v16

    move v11, v5

    move/from16 v5, v17

    .line 6559
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6560
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6561
    invoke-virtual {v6, v9, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/Object"

    .line 6562
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 6563
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6564
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6565
    invoke-virtual {v6, v8, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6566
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6567
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6568
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6569
    invoke-virtual {v6, v8, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6570
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6571
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x5

    .line 6572
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x2

    .line 6573
    invoke-virtual {v6, v8, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6574
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6575
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x6

    .line 6576
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6577
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6578
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 6579
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6580
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6581
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x7

    .line 6582
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6583
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6584
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 6585
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6586
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6587
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x8

    .line 6588
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6589
    invoke-virtual {v6, v8, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x5

    .line 6590
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 6591
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6592
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6593
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x6

    .line 6594
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x15

    .line 6595
    invoke-virtual {v6, v0, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6596
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x7e

    .line 6597
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6598
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v1, 0x99

    .line 6599
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6600
    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6601
    new-instance v5, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v5}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v1, 0xa7

    .line 6602
    invoke-virtual {v6, v1, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6603
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v3, v12, [Ljava/lang/Object;

    const-string v0, "java/lang/invoke/MethodHandles$Lookup"

    aput-object v0, v3, v14

    const-string v0, "java/lang/String"

    aput-object v0, v3, v15

    const-string v0, "java/lang/invoke/MethodType"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "[Ljava/lang/Object;"

    aput-object v0, v3, v7

    .line 6604
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, v3, v10

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const-string v0, "[Ljava/lang/Class;"

    const/4 v1, 0x6

    aput-object v0, v3, v1

    const-string v0, "[Ljava/lang/invoke/MethodType;"

    const/4 v1, 0x7

    aput-object v0, v3, v1

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v3, v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "java/lang/Class"

    aput-object v0, v4, v15

    const-string v0, "java/lang/reflect/Method"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v0, v4, v7

    const-string v0, "[Ljava/lang/Object;"

    aput-object v0, v4, v10

    const-string v0, "[Ljava/lang/Object;"

    const/4 v1, 0x5

    aput-object v0, v4, v1

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v1, 0x6

    aput-object v0, v4, v1

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/16 v16, 0x7

    move-object/from16 v0, p3

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object v8, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 6605
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6606
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v3, v12, [Ljava/lang/Object;

    const-string v0, "java/lang/invoke/MethodHandles$Lookup"

    aput-object v0, v3, v14

    const-string v0, "java/lang/String"

    aput-object v0, v3, v15

    const-string v0, "java/lang/invoke/MethodType"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "[Ljava/lang/Object;"

    aput-object v0, v3, v7

    .line 6607
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, v3, v10

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const-string v0, "[Ljava/lang/Class;"

    const/4 v1, 0x6

    aput-object v0, v3, v1

    const-string v0, "[Ljava/lang/invoke/MethodType;"

    const/4 v1, 0x7

    aput-object v0, v3, v1

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v3, v1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v14

    const-string v0, "java/lang/Class"

    aput-object v0, v5, v15

    const-string v0, "java/lang/reflect/Method"

    const/4 v1, 0x2

    aput-object v0, v5, v1

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v0, v5, v7

    const-string v0, "[Ljava/lang/Object;"

    aput-object v0, v5, v10

    const-string v0, "[Ljava/lang/Object;"

    const/4 v1, 0x5

    aput-object v0, v5, v1

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v1, 0x6

    aput-object v0, v5, v1

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v1, 0x7

    aput-object v0, v5, v1

    const/4 v1, 0x0

    const/16 v4, 0x8

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/Boolean"

    const-string v3, "valueOf"

    const-string v4, "(Z)Ljava/lang/Boolean;"

    const/4 v5, 0x0

    .line 6608
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6609
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6610
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x7

    .line 6611
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/4 v0, 0x6

    const/16 v1, 0x19

    .line 6612
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/util/Arrays"

    const-string v3, "asList"

    const-string v4, "([Ljava/lang/Object;)Ljava/util/List;"

    move-object/from16 v0, p3

    .line 6613
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6614
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6615
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x8

    .line 6616
    invoke-virtual {v6, v9, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/4 v0, 0x7

    const/16 v1, 0x19

    .line 6617
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string v2, "java/util/Arrays"

    const-string v3, "asList"

    const-string v4, "([Ljava/lang/Object;)Ljava/util/List;"

    move-object/from16 v0, p3

    .line 6618
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6619
    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/reflect/Method"

    const-string v3, "invoke"

    const-string v4, "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;"

    .line 6620
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0xc0

    const-string v1, "[B"

    .line 6621
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 6622
    invoke-virtual {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6623
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xb6

    const-string v3, "defineAnonymousClass"

    const-string v4, "(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    .line 6624
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x8

    const/16 v1, 0x19

    .line 6625
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6626
    invoke-virtual {v6, v1, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 6627
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->access$1100()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xb6

    const-string v3, "ensureClassInitialized"

    const-string v4, "(Ljava/lang/Class;)V"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    const/16 v1, 0x19

    .line 6628
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodType"

    const-string v3, "parameterCount"

    const-string v4, "()I"

    move-object/from16 v0, p3

    .line 6629
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6630
    new-instance v8, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v8}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x9a

    .line 6631
    invoke-virtual {v6, v0, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const/16 v0, 0xbb

    const-string v1, "java/lang/invoke/ConstantCallSite"

    .line 6632
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 6633
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x2

    const/16 v1, 0x19

    .line 6634
    invoke-virtual {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodType"

    const-string v3, "returnType"

    const-string v4, "()Ljava/lang/Class;"

    move-object/from16 v0, p3

    .line 6635
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x19

    .line 6636
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "java/lang/Class"

    const-string v3, "getDeclaredConstructors"

    const-string v4, "()[Ljava/lang/reflect/Constructor;"

    move-object/from16 v0, p3

    .line 6637
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6638
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0x32

    .line 6639
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 6640
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    const-string v1, "java/lang/Object"

    .line 6641
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/reflect/Constructor"

    const-string v3, "newInstance"

    const-string v4, "([Ljava/lang/Object;)Ljava/lang/Object;"

    move-object/from16 v0, p3

    .line 6642
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/invoke/MethodHandles"

    const-string v3, "constant"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;"

    .line 6643
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb7

    const-string v2, "java/lang/invoke/ConstantCallSite"

    const-string v3, "<init>"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)V"

    .line 6644
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6645
    new-instance v7, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v7}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    .line 6646
    invoke-virtual {v6, v0, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6647
    invoke-virtual {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v3, v15, [Ljava/lang/Object;

    const-string v0, "java/lang/Class"

    aput-object v0, v3, v14

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 6648
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v0, 0xbb

    const-string v1, "java/lang/invoke/ConstantCallSite"

    .line 6649
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 6650
    invoke-virtual {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xb2

    const-string v1, "java/lang/invoke/MethodHandles$Lookup"

    const-string v2, "IMPL_LOOKUP"

    const-string v3, "Ljava/lang/invoke/MethodHandles$Lookup;"

    .line 6651
    invoke-virtual {v6, v0, v1, v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 6652
    invoke-virtual {v6, v0, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v1, "get$Lambda"

    .line 6653
    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 6654
    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "findStatic"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    .line 6655
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb7

    const-string v2, "java/lang/invoke/ConstantCallSite"

    const-string v3, "<init>"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)V"

    .line 6656
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6657
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v5, v15, [Ljava/lang/Object;

    const-string v0, "java/lang/invoke/CallSite"

    aput-object v0, v5, v14

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p3

    .line 6658
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v0, 0xb0

    .line 6659
    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xa

    .line 6660
    invoke-virtual {v6, v12, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 6661
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 6662
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->IGNORE_ORIGINAL:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object v0
.end method
