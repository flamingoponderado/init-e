import InitE.FrontendStages.Globals.Output86
import InitE.FrontendStages.Declarations.Data86
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate70
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate86_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified86) =
        some globalOutput86 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal86 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified86) := by trivial
theorem globalException86_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified86) = none := by rfl
#print axioms globalTranslate86_eq
end InitE.FrontendStages.Declarations
