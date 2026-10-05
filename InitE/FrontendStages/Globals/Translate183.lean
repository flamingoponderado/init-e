import InitE.FrontendStages.Globals.Output183
import InitE.FrontendStages.Declarations.Data183
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate167
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate183_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified183) =
        some globalOutput183 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal183 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified183) := by trivial
theorem globalException183_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified183) = none := by rfl
#print axioms globalTranslate183_eq
end InitE.FrontendStages.Declarations
