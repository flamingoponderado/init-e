import InitE.BackendStages.BytePiecesData127
import InitE.BackendStages.BytePiecesData128
import InitE.BackendStages.BytePiecesData129
import InitE.BackendStages.BytePiecesData130
import InitE.BackendStages.BytePiecesData131
import InitE.BackendStages.BytePiecesData132
import InitE.BackendStages.BytePiecesData133
import InitE.BackendStages.BytePiecesData134
import InitECandidate.Bytes005
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate005_eq : InitECandidate.bytes005 = [piece127_1, piece128_0, piece129_0, piece130_0, piece131_0, piece132_0, piece133_0, piece134_0].flatten := by
  rw [piece127_1_eq, piece128_0_eq, piece129_0_eq, piece130_0_eq, piece131_0_eq, piece132_0_eq, piece133_0_eq, piece134_0_eq]
  rfl
#print axioms candidate005_eq
end InitE.BackendStages.BytePieces
