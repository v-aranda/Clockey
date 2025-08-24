<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import { Head } from "@inertiajs/vue3";
import { Card, CardContent } from "@/components/ui/card";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel";
</script>

<template>
  <Head title="Dashboard" />

  <AuthenticatedLayout>
    <template #header>
      <h2 class="text-xl font-semibold leading-tight text-gray-800 dark:text-gray-200">
        Dashboard
      </h2>
    </template>

    <div class="py-12">
      <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg dark:bg-gray-800">
          <div class="p-6 text-gray-900 dark:text-gray-100">You're logged in!</div>
        </div>
        <div class="mt-6 w-50 flex items-center justify-center">
          <Carousel class="relative w-full max-w-xs">
            <CarouselContent>
              <CarouselItem v-for="(_, index) in 10" :key="index">
                <div class="p-1">
                  <Card>
                    <CardContent
                      class="flex aspect-square items-center justify-center p-6"
                    >
                      <span class="text-4xl font-semibold">{{ index + 1 }}</span>
                    </CardContent>
                  </Card>
                </div>
              </CarouselItem>
            </CarouselContent>
            <CarouselPrevious />
            <CarouselNext />
          </Carousel>
        </div>
      </div>
    </div>
  </AuthenticatedLayout>
</template>
