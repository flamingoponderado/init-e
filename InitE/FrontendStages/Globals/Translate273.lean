import InitE.FrontendStages.Globals.Output273
import InitE.FrontendStages.Declarations.Data273
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate257
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate273_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified273) =
        some globalOutput273 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal273 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified273) := by trivial
theorem globalException273_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified273) = none := by rfl
#print axioms globalTranslate273_eq
end InitE.FrontendStages.Declarations
