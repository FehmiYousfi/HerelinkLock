.class public final enum Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;
.super Ljava/lang/Enum;
.source "MethodAccessorFactory.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodAccessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodAccessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodAccessorFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    new-instance v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    .line 92
    sget-object v2, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;
    .locals 1

    .line 92
    const-class v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;
    .locals 1

    .line 92
    sget-object v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodAccessorFactory$Illegal;

    return-object v0
.end method


# virtual methods
.method public registerAccessorFor(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "It is illegal to register an accessor for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerGetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "It is illegal to register a field getter for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerSetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "It is illegal to register a field setter for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
