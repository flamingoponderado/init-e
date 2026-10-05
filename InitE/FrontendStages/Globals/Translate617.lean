import InitE.FrontendStages.Globals.Output617
import InitE.FrontendStages.Declarations.Data617
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate597
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate617_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified617) =
        some globalOutput617 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal617 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified617) := by trivial
theorem globalException617_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified617) = none := by rfl
#print axioms globalTranslate617_eq
end InitE.FrontendStages.Declarations
