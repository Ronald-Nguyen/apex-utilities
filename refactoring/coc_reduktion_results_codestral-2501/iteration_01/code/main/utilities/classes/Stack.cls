/**
 * @author Gavin Palmer
 * @date 2020-11-20
 * @description A simple stack implementation to allow FILO on data structures
 *
 **/
public class Stack {
    private final List<Object> items = new List<Object>();

    public void push(Object item) {
        if (item == null) {
            throw new NullPointerException('Cannot push null item onto stack');
        }
        items.add(item);
    }

    public Object pop() {
        if (isEmpty()) {
            throw new UnderflowException();
        }
        return items.remove(items.size() - 1);
    }

    public Integer size() {
        return items.size();
    }

    public Boolean isEmpty() {
        return items.isEmpty();
    }

    public override String toString() {
        if (isEmpty()) {
            return '';
        }
        return String.join(items, '\n');
    }

    public class UnderflowException extends Exception {
    }
}