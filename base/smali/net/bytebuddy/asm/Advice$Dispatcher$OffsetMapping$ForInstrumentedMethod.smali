.class public abstract enum Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ForInstrumentedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

.field public static final enum CONSTRUCTOR:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

.field public static final enum EXECUTABLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

.field public static final enum METHOD:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2642
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$1;

    const/4 v1, 0x0

    const-string v2, "METHOD"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->METHOD:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    .line 2652
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$2;

    const/4 v2, 0x1

    const-string v3, "CONSTRUCTOR"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->CONSTRUCTOR:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    .line 2662
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$3;

    const/4 v3, 0x2

    const-string v4, "EXECUTABLE"

    invoke-direct {v0, v4, v3}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->EXECUTABLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    .line 2637
    sget-object v4, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->METHOD:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    aput-object v4, v0, v1

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->CONSTRUCTOR:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->EXECUTABLE:Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2637
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0

    .line 2637
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;
    .locals 1

    .line 2637
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;
    .locals 1

    .line 2637
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;

    return-object v0
.end method


# virtual methods
.method protected abstract isRepresentable(Lnet/bytebuddy/description/method/MethodDescription;)Z
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;
    .locals 0

    .line 2671
    invoke-virtual {p0, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;->isRepresentable(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2674
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForStackManipulation;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;

    move-result-object p1

    return-object p1

    .line 2672
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot represent "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as given method constant"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
