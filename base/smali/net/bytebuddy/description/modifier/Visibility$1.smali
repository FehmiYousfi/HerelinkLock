.class synthetic Lnet/bytebuddy/description/modifier/Visibility$1;
.super Ljava/lang/Object;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/modifier/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$bytebuddy$description$modifier$Visibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    invoke-static {}, Lnet/bytebuddy/description/modifier/Visibility;->values()[Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->$SwitchMap$net$bytebuddy$description$modifier$Visibility:[I

    :try_start_0
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->$SwitchMap$net$bytebuddy$description$modifier$Visibility:[I

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Lnet/bytebuddy/description/modifier/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->$SwitchMap$net$bytebuddy$description$modifier$Visibility:[I

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PROTECTED:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Lnet/bytebuddy/description/modifier/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->$SwitchMap$net$bytebuddy$description$modifier$Visibility:[I

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Lnet/bytebuddy/description/modifier/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lnet/bytebuddy/description/modifier/Visibility$1;->$SwitchMap$net$bytebuddy$description$modifier$Visibility:[I

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Lnet/bytebuddy/description/modifier/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
