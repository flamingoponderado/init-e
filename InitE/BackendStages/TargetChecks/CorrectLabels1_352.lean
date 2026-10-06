import InitE.BackendStages.TargetChecks.CorrectLabels0_352
import InitE.BackendStages.TargetChecks.CorrectEncode0_352
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_352_eq : LabToTarget.sectionLabels 245680 Reencode0_352.lines [] = (245712, localLabels1_352) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245680 245712 riscvConfig.encode
    Initial352.lines Reencode0_352.lines [] Reencode0_352_eq).trans
    (localLabels0_352_eq.trans (by kernel_rfl))
#print axioms localLabels1_352_eq
end InitE.BackendStages.TargetChecks.Correct
