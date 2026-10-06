import InitE.FrontendStages.Globals.Output157
import InitE.FrontendStages.Declarations.Data157
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate140
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate157_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified157) =
        some globalOutput157 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal157 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified157) := by trivial
theorem globalException157_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified157) = none := by rfl
#print axioms globalTranslate157_eq
end InitE.FrontendStages.Declarations
