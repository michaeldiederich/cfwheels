```coldfusion
isClass()
```
```coldfusion
// Use the passed in `id` when we're already in an instance 
<cffunction name="memberIsAdmin">
    <cfif isClass()>
        <cfreturn this.findByKey(arguments.id).admin>
    <cfelse>
        <cfreturn this.admin>
    </cfif>
</cffunction>
```