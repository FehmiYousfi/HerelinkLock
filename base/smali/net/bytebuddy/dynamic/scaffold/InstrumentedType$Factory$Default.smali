.class public abstract enum Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
.super Ljava/lang/Enum;
.source "InstrumentedType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

.field public static final enum FROZEN:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

.field public static final enum MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 214
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$1;

    const/4 v1, 0x0

    const-string v2, "MODIFIABLE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    .line 240
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$2;

    const/4 v2, 0x1

    const-string v3, "FROZEN"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->FROZEN:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    .line 209
    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->FROZEN:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/InstrumentedType$1;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
    .locals 1

    .line 209
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
    .locals 1

    .line 209
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    return-object v0
.end method


# virtual methods
.method public subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 249
    new-instance v18, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v0, v18

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    sget-object v10, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    sget-object v11, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v12, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription;

    sget-object v13, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;ZZZ)V

    return-object v18
.end method
