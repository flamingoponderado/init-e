import Tools.GenSmallStages
import InitE.SmallStages.Oracles834
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 834 InitE.WordStages.source834.2.1 InitE.WordStages.source834.2.2 InitE.SmallStages.Oracles834.oracle834
