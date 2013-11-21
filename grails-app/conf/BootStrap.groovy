import org.nest5.SecRole
import org.nest5.SecUser
import org.nest5.SecUserSecRole
import org.nest5.User

class BootStrap {

    def init = { servletContext ->

        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)


        def adminUser = User.findByUsername('juanda6') ?: new User(
                username: "juanda6",
                password:"farroyavefami",
                enabled: true,
                accountExpired: false,
                accountLocked: false,
                passwordExpired: false,
                email: 'juan.arroyave@qtagtech.com',
                bio: 'Cofundador y CTO Qtag Technologies, Geek, Apasionado por la tecnología, la programación y el emprendimiento',
                position: 'Co-Founder/CTO',
                name: 'Juan David Arroyave Henao').save(failOnError: true)


        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }

    }
    def destroy = {
    }
}
