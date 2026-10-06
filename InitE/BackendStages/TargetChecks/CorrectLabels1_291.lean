import InitE.BackendStages.TargetChecks.CorrectLabels0_291
import InitE.BackendStages.TargetChecks.CorrectEncode0_291
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_291_eq : LabToTarget.sectionLabels 193668 Reencode0_291.lines [] = (194324, localLabels1_291) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 193668 194324 riscvConfig.encode
    Initial291.lines Reencode0_291.lines [] Reencode0_291_eq).trans
    (localLabels0_291_eq.trans (by kernel_rfl))
#print axioms localLabels1_291_eq
end InitE.BackendStages.TargetChecks.Correct
