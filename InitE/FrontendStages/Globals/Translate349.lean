import InitE.FrontendStages.Globals.Output349
import InitE.FrontendStages.Declarations.Data349
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate333
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate349_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified349) =
        some globalOutput349 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal349 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified349) := by trivial
theorem globalException349_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified349) = none := by rfl
#print axioms globalTranslate349_eq
end InitE.FrontendStages.Declarations
