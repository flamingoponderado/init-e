import InitE.FrontendStages.Globals.Output809
import InitE.FrontendStages.Declarations.Data809
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate790
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate809_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified809) =
        some globalOutput809 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal809 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified809) := by trivial
theorem globalException809_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified809) = none := by rfl
#print axioms globalTranslate809_eq
end InitE.FrontendStages.Declarations
