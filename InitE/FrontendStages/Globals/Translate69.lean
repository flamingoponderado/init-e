import InitE.FrontendStages.Globals.Output69
import InitE.FrontendStages.Declarations.Data69
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate53
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate69_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified69) =
        some globalOutput69 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal69 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified69) := by trivial
theorem globalException69_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified69) = none := by rfl
#print axioms globalTranslate69_eq
end InitE.FrontendStages.Declarations
