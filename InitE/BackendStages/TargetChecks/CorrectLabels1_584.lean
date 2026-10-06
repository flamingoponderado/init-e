import InitE.BackendStages.TargetChecks.CorrectLabels0_584
import InitE.BackendStages.TargetChecks.CorrectEncode0_584
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_584_eq : LabToTarget.sectionLabels 425020 Reencode0_584.lines [] = (425700, localLabels1_584) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 425020 425700 riscvConfig.encode
    Initial584.lines Reencode0_584.lines [] Reencode0_584_eq).trans
    (localLabels0_584_eq.trans (by kernel_rfl))
#print axioms localLabels1_584_eq
end InitE.BackendStages.TargetChecks.Correct
