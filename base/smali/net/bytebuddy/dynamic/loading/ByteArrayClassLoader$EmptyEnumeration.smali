.class public final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;
.super Ljava/lang/Enum;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "EmptyEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;",
        ">;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 970
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    .line 965
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;
    .locals 1

    .line 965
    const-class v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;
    .locals 1

    .line 965
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 965
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 1

    .line 979
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
