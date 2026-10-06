import InitE.FrontendStages.Globals.Output777
import InitE.FrontendStages.Declarations.Data777
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate761
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate777_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified777) =
        some globalOutput777 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal777 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified777) := by trivial
theorem globalException777_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified777) = none := by rfl
#print axioms globalTranslate777_eq
end InitE.FrontendStages.Declarations
