import InitE.FrontendStages.Globals.Output228
import InitE.FrontendStages.Declarations.Data228
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate210
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate228_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified228) =
        some globalOutput228 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal228 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified228) := by trivial
theorem globalException228_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified228) = none := by rfl
#print axioms globalTranslate228_eq
end InitE.FrontendStages.Declarations
