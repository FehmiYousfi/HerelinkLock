.class public Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;
.super Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;


# static fields
.field public static final ADD:I = 0x60

.field public static final AND:I = 0x7e

.field private static final BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final BOOLEAN_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

.field private static final BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final CHARACTER_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final CHAR_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

.field private static final CLDESC:Ljava/lang/String; = "Ljava/lang/Class;"

.field public static final DIV:I = 0x6c

.field private static final DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final DOUBLE_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

.field public static final EQ:I = 0x99

.field private static final FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final FLOAT_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

.field public static final GE:I = 0x9c

.field public static final GT:I = 0x9d

.field private static final INTEGER_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final INT_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

.field public static final LE:I = 0x9e

.field private static final LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final LONG_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

.field public static final LT:I = 0x9b

.field public static final MUL:I = 0x68

.field public static final NE:I = 0x9a

.field public static final NEG:I = 0x74

.field private static final NUMBER_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field private static final OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final OR:I = 0x80

.field public static final REM:I = 0x70

.field public static final SHL:I = 0x78

.field private static final SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

.field public static final SHR:I = 0x7a

.field public static final SUB:I = 0x64

.field public static final USHR:I = 0x7c

.field public static final XOR:I = 0x82

.field static synthetic class$org$objectweb$asm$commons$GeneratorAdapter:Ljava/lang/Class;


# instance fields
.field private final access:I

.field private final argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

.field private final localTypes:Ljava/util/List;

.field private final returnType:Lnet/bytebuddy/jar/asm/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->_clinit_()V

    const-string v0, "java/lang/Byte"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Boolean"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Short"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Character"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->CHARACTER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Integer"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->INTEGER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Float"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Long"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Double"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Number"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->NUMBER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const-string v0, "boolean booleanValue()"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BOOLEAN_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    const-string v0, "char charValue()"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->CHAR_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    const-string v0, "int intValue()"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->INT_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    const-string v0, "float floatValue()"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->FLOAT_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    const-string v0, "long longValue()"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->LONG_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    const-string v0, "double doubleValue()"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->DOUBLE_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    return-void
.end method

.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p5, p2}, Lnet/bytebuddy/jar/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    iput p3, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->access:I

    invoke-static {p5}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->returnType:Lnet/bytebuddy/jar/asm/Type;

    invoke-static {p5}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/commons/Method;Ljava/lang/String;[Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 6

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/commons/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getInternalNames([Lnet/bytebuddy/jar/asm/Type;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p5

    move v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;-><init>(ILnet/bytebuddy/jar/asm/commons/Method;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/commons/Method;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->class$org$objectweb$asm$commons$GeneratorAdapter:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static _clinit_()V
    .locals 1

    const-string v0, "net.bytebuddy.jar.asm.commons.GeneratorAdapter"

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->class$org$objectweb$asm$commons$GeneratorAdapter:Ljava/lang/Class;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fieldInsn(ILnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getArgIndex(I)I
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->access:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getBoxedType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->INTEGER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->CHARACTER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getInternalNames([Lnet/bytebuddy/jar/asm/Type;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private invokeInsn(ILnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;Z)V
    .locals 6

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/commons/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    move v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private loadInsn(Lnet/bytebuddy/jar/asm/Type;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private storeInsn(Lnet/bytebuddy/jar/asm/Type;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private typeInsn(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public arrayLength()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public arrayLoad(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public arrayStore(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x4f

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public box(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 5

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getBoxedType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newInstance(Lnet/bytebuddy/jar/asm/Type;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dupX2()V

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dupX2()V

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->pop()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dupX1()V

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->swap()V

    :goto_0
    new-instance v1, Lnet/bytebuddy/jar/asm/commons/Method;

    sget-object v2, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Lnet/bytebuddy/jar/asm/Type;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "<init>"

    invoke-direct {v1, p1, v2, v3}, Lnet/bytebuddy/jar/asm/commons/Method;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)V

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeConstructor(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public cast(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    if-eq p1, p2, :cond_e

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_2

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x90

    :goto_0
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_2

    :cond_0
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8f

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x8e

    :goto_1
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->cast(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/Type;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_5

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8d

    goto :goto_0

    :cond_3
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8c

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x8b

    goto :goto_1

    :cond_5
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_8

    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x8a

    goto :goto_0

    :cond_6
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x89

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x88

    goto :goto_1

    :cond_8
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->BYTE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_9

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x91

    goto :goto_0

    :cond_9
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->CHAR_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x92

    goto :goto_0

    :cond_a
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->DOUBLE_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_b

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x87

    goto :goto_0

    :cond_b
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->FLOAT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x86

    goto :goto_0

    :cond_c
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->LONG_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x85

    goto :goto_0

    :cond_d
    sget-object p1, Lnet/bytebuddy/jar/asm/Type;->SHORT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p2, p1, :cond_e

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0x93

    goto/16 :goto_0

    :cond_e
    :goto_2
    return-void
.end method

.method public catchException(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    if-nez p3, :cond_0

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p2, v0, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mark(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public checkCast(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->typeInsn(ILnet/bytebuddy/jar/asm/Type;)V

    :cond_0
    return-void
.end method

.method public dup()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X1()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX1()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public endMethod()V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->access:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public getField(Lnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    const/16 v0, 0xb4

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->fieldInsn(ILnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V

    return-void
.end method

.method public getLocalType(I)Lnet/bytebuddy/jar/asm/Type;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->firstLocal:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    return-object p1
.end method

.method public getStatic(Lnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    const/16 v0, 0xb2

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->fieldInsn(ILnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V

    return-void
.end method

.method public goTo(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifCmp(Lnet/bytebuddy/jar/asm/Type;ILnet/bytebuddy/jar/asm/Label;)V
    .locals 3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9d

    const/16 v2, 0x9c

    packed-switch v0, :pswitch_data_0

    const/4 p1, -0x1

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_0
    const/16 v0, 0x99

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9a

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0xa6

    invoke-virtual {p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Bad comparison for type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 p2, 0xa5

    invoke-virtual {p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x98

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v0, 0x97

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0x94

    :goto_1
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eq p2, v2, :cond_5

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0x96

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v0, 0x95

    goto :goto_1

    :goto_3
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void

    :pswitch_4
    const/16 p1, 0xa4

    goto :goto_4

    :pswitch_5
    const/16 p1, 0xa3

    goto :goto_4

    :pswitch_6
    const/16 p1, 0xa2

    goto :goto_4

    :pswitch_7
    const/16 p1, 0xa1

    goto :goto_4

    :pswitch_8
    const/16 p1, 0xa0

    goto :goto_4

    :pswitch_9
    const/16 p1, 0x9f

    :goto_4
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p2, p1, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x99
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public ifICmp(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->INT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->ifCmp(Lnet/bytebuddy/jar/asm/Type;ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifNonNull(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifNull(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public ifZCmp(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public iinc(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public instanceOf(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    const/16 v0, 0xc1

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->typeInsn(ILnet/bytebuddy/jar/asm/Type;)V

    return-void
.end method

.method public invokeConstructor(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V
    .locals 2

    const/16 v0, 0xb7

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeInsn(ILnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;Z)V

    return-void
.end method

.method public varargs invokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public invokeInterface(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V
    .locals 2

    const/16 v0, 0xb9

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeInsn(ILnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;Z)V

    return-void
.end method

.method public invokeStatic(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V
    .locals 2

    const/16 v0, 0xb8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeInsn(ILnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;Z)V

    return-void
.end method

.method public invokeVirtual(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V
    .locals 2

    const/16 v0, 0xb6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeInsn(ILnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;Z)V

    return-void
.end method

.method public loadArg(I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->loadInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    return-void
.end method

.method public loadArgArray()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->push(I)V

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newArray(Lnet/bytebuddy/jar/asm/Type;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dup()V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->push(I)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->loadArg(I)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->box(Lnet/bytebuddy/jar/asm/Type;)V

    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->arrayStore(Lnet/bytebuddy/jar/asm/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadArgs()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->loadArgs(II)V

    return-void
.end method

.method public loadArgs(II)V
    .locals 4

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    add-int v3, p1, v1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->loadInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadLocal(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getLocalType(I)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->loadInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    return-void
.end method

.method public loadLocal(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->setLocalType(ILnet/bytebuddy/jar/asm/Type;)V

    invoke-direct {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->loadInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    return-void
.end method

.method public loadThis()V
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->access:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no \'this\' pointer within static method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark()Lnet/bytebuddy/jar/asm/Label;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-object v0
.end method

.method public mark(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public math(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public monitorEnter()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public monitorExit()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public newArray(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xbd

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->typeInsn(ILnet/bytebuddy/jar/asm/Type;)V

    return-void

    :pswitch_0
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbc

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newInstance(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->typeInsn(ILnet/bytebuddy/jar/asm/Type;)V

    return-void
.end method

.method public newLabel()Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    return-object v0
.end method

.method public not()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop2()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public push(D)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0xe

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_1
    return-void
.end method

.method public push(F)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0xb

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_1
    return-void
.end method

.method public push(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x10

    :goto_0
    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_1

    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public push(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_1
    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public push(Lnet/bytebuddy/jar/asm/Handle;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public push(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const-string v1, "Ljava/lang/Class;"

    const-string v2, "TYPE"

    const/16 v3, 0xb2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Double"

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Long"

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Float"

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Integer"

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Short"

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Byte"

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Character"

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const-string v0, "java/lang/Boolean"

    :goto_0
    invoke-virtual {p1, v3, v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public push(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->push(I)V

    return-void
.end method

.method public putField(Lnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    const/16 v0, 0xb5

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->fieldInsn(ILnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V

    return-void
.end method

.method public putStatic(Lnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    const/16 v0, 0xb3

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->fieldInsn(ILnet/bytebuddy/jar/asm/Type;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;)V

    return-void
.end method

.method public ret(I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public returnValue()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->returnType:Lnet/bytebuddy/jar/asm/Type;

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method protected setLocalType(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->firstLocal:I

    sub-int/2addr p1, v0

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public storeArg(I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->argumentTypes:[Lnet/bytebuddy/jar/asm/Type;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->storeInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    return-void
.end method

.method public storeLocal(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getLocalType(I)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->storeInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    return-void
.end method

.method public storeLocal(ILnet/bytebuddy/jar/asm/Type;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->setLocalType(ILnet/bytebuddy/jar/asm/Type;)V

    invoke-direct {p0, p2, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->storeInsn(Lnet/bytebuddy/jar/asm/Type;I)V

    return-void
.end method

.method public swap()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public swap(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p1

    if-ne p2, v0, :cond_1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->swap()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dupX2()V

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->pop()V

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dup2X1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dup2X2()V

    :goto_0
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->pop2()V

    :goto_1
    return-void
.end method

.method public tableSwitch([ILnet/bytebuddy/jar/asm/commons/TableSwitchGenerator;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    int-to-float v0, v0

    array-length v3, p1

    sub-int/2addr v3, v2

    aget v3, p1, v3

    aget v4, p1, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v0, v3

    :goto_0
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->tableSwitch([ILnet/bytebuddy/jar/asm/commons/TableSwitchGenerator;Z)V

    return-void
.end method

.method public tableSwitch([ILnet/bytebuddy/jar/asm/commons/TableSwitchGenerator;Z)V
    .locals 10

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, p1, v3

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keys must be sorted ascending"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newLabel()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newLabel()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v2

    array-length v3, p1

    if-lez v3, :cond_6

    array-length v3, p1

    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v6, v3, -0x1

    aget v6, p1, v6

    sub-int v7, v6, v5

    add-int/2addr v7, v0

    if-eqz p3, :cond_4

    new-array p3, v7, [Lnet/bytebuddy/jar/asm/Label;

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v4

    :goto_1
    if-ge v0, v3, :cond_2

    aget v8, p1, v0

    sub-int/2addr v8, v5

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newLabel()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v9

    aput-object v9, p3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {p1, v5, v6, v1, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    :goto_2
    if-ge v4, v7, :cond_6

    aget-object p1, p3, v4

    if-eq p1, v1, :cond_3

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mark(Lnet/bytebuddy/jar/asm/Label;)V

    add-int p1, v4, v5

    invoke-interface {p2, p1, v2}, Lnet/bytebuddy/jar/asm/commons/TableSwitchGenerator;->generateCase(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-array p3, v3, [Lnet/bytebuddy/jar/asm/Label;

    move v0, v4

    :goto_3
    if-ge v0, v3, :cond_5

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newLabel()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v5

    aput-object v5, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, v1, p1, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    :goto_4
    if-ge v4, v3, :cond_6

    aget-object v0, p3, v4

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mark(Lnet/bytebuddy/jar/asm/Label;)V

    aget v0, p1, v4

    invoke-interface {p2, v0, v2}, Lnet/bytebuddy/jar/asm/commons/TableSwitchGenerator;->generateCase(ILnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mark(Lnet/bytebuddy/jar/asm/Label;)V

    invoke-interface {p2}, Lnet/bytebuddy/jar/asm/commons/TableSwitchGenerator;->generateDefault()V

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mark(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public throwException()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public throwException(Lnet/bytebuddy/jar/asm/Type;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->newInstance(Lnet/bytebuddy/jar/asm/Type;)V

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->dup()V

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    const-string p2, "void <init> (String)"

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/commons/Method;->getMethod(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/commons/Method;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeConstructor(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->throwException()V

    return-void
.end method

.method public unbox(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 2

    sget-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->NUMBER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->DOUBLE_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->LONG_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->FLOAT_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->INT_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->CHARACTER_TYPE:Lnet/bytebuddy/jar/asm/Type;

    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->CHAR_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    sget-object v1, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->BOOLEAN_VALUE:Lnet/bytebuddy/jar/asm/commons/Method;

    goto :goto_0

    :pswitch_6
    return-void

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->checkCast(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->checkCast(Lnet/bytebuddy/jar/asm/Type;)V

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeVirtual(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public valueOf(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 4

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->getBoxedType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/jar/asm/commons/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Lnet/bytebuddy/jar/asm/Type;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "valueOf"

    invoke-direct {v1, p1, v0, v2}, Lnet/bytebuddy/jar/asm/commons/Method;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)V

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/commons/GeneratorAdapter;->invokeStatic(Lnet/bytebuddy/jar/asm/Type;Lnet/bytebuddy/jar/asm/commons/Method;)V

    :cond_2
    :goto_0
    return-void
.end method
