.class public final enum Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;
.super Ljava/lang/Enum;
.source "Super.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForParameterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 279
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    .line 274
    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;
    .locals 1

    .line 274
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;
    .locals 1

    .line 274
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 283
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    .line 284
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method
