import InitE.BackendStages.TargetChecks.CorrectLabels0_370
import InitE.BackendStages.TargetChecks.CorrectEncode0_370
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_370_eq : LabToTarget.sectionLabels 256904 Reencode0_370.lines [] = (256924, localLabels1_370) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 256904 256924 riscvConfig.encode
    Initial370.lines Reencode0_370.lines [] Reencode0_370_eq).trans
    (localLabels0_370_eq.trans (by kernel_rfl))
#print axioms localLabels1_370_eq
end InitE.BackendStages.TargetChecks.Correct
