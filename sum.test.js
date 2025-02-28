import sum from './sum';
import { expect, test } from 'vitest'

test('Adds 1 + 2 equals 3', () => {
    expect(sum(1, 2)).toBe(3);
});

test('Adds 2 + 3 equals 5', () => {
    expect(sum(2, 3)).toBe(5);
});