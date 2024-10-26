.class public abstract enum Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;
.super Ljava/lang/Enum;
.source "FieldAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "TerminationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

.field public static final enum NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

.field public static final enum RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 651
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler$1;

    const/4 v1, 0x0

    const-string v2, "RETURNING"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    .line 664
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler$2;

    const/4 v2, 0x1

    const-string v3, "NON_OPERATIONAL"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    .line 646
    sget-object v3, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->NON_OPERATIONAL:Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 646
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/FieldAccessor$1;)V
    .locals 0

    .line 646
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;
    .locals 1

    .line 646
    const-class v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;
    .locals 1

    .line 646
    sget-object v0, Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/FieldAccessor$ForParameterSetter$TerminationHandler;

    return-object v0
.end method


# virtual methods
.method protected abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
