import InitE.BackendStages.TargetChecks.CorrectLabels0_325
import InitE.BackendStages.TargetChecks.CorrectEncode0_325
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_325_eq : LabToTarget.sectionLabels 222556 Reencode0_325.lines [] = (222644, localLabels1_325) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 222556 222644 riscvConfig.encode
    Initial325.lines Reencode0_325.lines [] Reencode0_325_eq).trans
    (localLabels0_325_eq.trans (by kernel_rfl))
#print axioms localLabels1_325_eq
end InitE.BackendStages.TargetChecks.Correct
