import Tools.GenSmallStages
import InitE.SmallStages.Oracles419
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 419 InitE.WordStages.source419.2.1 InitE.WordStages.source419.2.2 InitE.SmallStages.Oracles419.oracle419
