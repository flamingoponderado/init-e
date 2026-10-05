import InitE.FrontendStages.Globals.Output307
import InitE.FrontendStages.Declarations.Data307
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate290
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate307_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified307) =
        some globalOutput307 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal307 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified307) := by trivial
theorem globalException307_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified307) = none := by rfl
#print axioms globalTranslate307_eq
end InitE.FrontendStages.Declarations
