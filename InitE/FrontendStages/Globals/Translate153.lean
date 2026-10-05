import InitE.FrontendStages.Globals.Output153
import InitE.FrontendStages.Declarations.Data153
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate136
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate153_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified153) =
        some globalOutput153 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal153 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified153) := by trivial
theorem globalException153_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified153) = none := by rfl
#print axioms globalTranslate153_eq
end InitE.FrontendStages.Declarations
