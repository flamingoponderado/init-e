import InitE.BackendStages.BytePiecesData508
import InitE.BackendStages.BytePiecesData509
import InitE.BackendStages.BytePiecesData510
import InitE.BackendStages.BytePiecesData511
import InitE.BackendStages.BytePiecesData512
import InitE.BackendStages.BytePiecesData513
import InitECandidate.Bytes078
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate078_eq : InitECandidate.bytes078 = [piece508_1, piece509_0, piece510_0, piece511_0, piece512_0, piece513_0].flatten := by
  rw [piece508_1_eq, piece509_0_eq, piece510_0_eq, piece511_0_eq, piece512_0_eq, piece513_0_eq]
  rfl
#print axioms candidate078_eq
end InitE.BackendStages.BytePieces
