# PostgreSQL বেসিক প্রশ্ন ও উত্তর

## ১. PostgreSQL কি?
PostgreSQL হলো একটি শক্তিশালী ওপেন সোর্স রিলেশনাল ডাটাবেস। এটি SQL ভাষা ব্যবহার করে ডাটা সংরক্ষণ ও পরিচালনা করে।

## ২. PostgreSQL-এ ডাটাবেস স্কিমার উদ্দেশ্য কি?
স্কিমা হলো ডাটাবেসের গঠন। এটি টেবিল, কলাম, ডাটা টাইপ এবং সম্পর্ক নির্ধারণ করে। স্কিমা ডাটা সংগঠিত রাখে এবং নিয়ম প্রয়োগ করে।

## ৩. Primary Key ও Foreign Key ব্যাখ্যা করুন
- **Primary Key**: প্রতিটি রেকর্ডের একটি অনন্য পরিচয়। এটি NULL হতে পারে না এবং ডুপ্লিকেট হতে পারে না।
- **Foreign Key**: একটি টেবিলের কলাম যা অন্য টেবিলের Primary Key-এর সাথে সংযুক্ত। এটি টেবিলের মধ্যে সম্পর্ক তৈরি করে।

## ৪. SELECT স্টেটমেন্টে WHERE ক্লজের উদ্দেশ্য
WHERE ক্লজ নির্দিষ্ট শর্ত অনুযায়ী ডাটা ফিল্টার করে। এটি শুধুমাত্র সেই রেকর্ডগুলো দেখায় যা শর্ত পূরণ করে।

## ৫. LIMIT ও OFFSET ক্লজের ব্যবহার
- **LIMIT**: কতগুলো রেকর্ড দেখানো হবে তা নির্ধারণ করে
- **OFFSET**: কোন রেকর্ড থেকে শুরু করবে তা নির্ধারণ করে

**উদাহরণ**: `LIMIT 10 OFFSET 5` মানে ৬ম রেকর্ড থেকে শুরু করে ১০টি রেকর্ড দেখাবে।
